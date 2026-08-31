# ==============================
# Birthday Notification Script
# ==============================

# CSV file path
$CsvPath = "C:\DevOps-Insider-batch-18\08-31-2026\Azure_Landing_zone\Birth_alarting"

# Mailpit SMTP configuration
$SmtpServer = "localhost"
$SmtpPort   = 1025

$From = "devops@local.test"
$To   = "hr@local.test"

# Today's date
$Today = Get-Date

Write-Host "Checking birthday for: $($Today.ToString('dd-MM-yyyy'))"

# Read CSV
$Employees = Import-Csv -Path $CsvPath

# Check today's birthday
$BirthdayEmployees = $Employees | Where-Object {

    $DOB = [datetime]::ParseExact(
        $_.DateOfBirth,
        "yyyy-MM-dd",
        $null
    )

    ($DOB.Day -eq $Today.Day) -and
    ($DOB.Month -eq $Today.Month)
}

# If birthday found
if ($BirthdayEmployees) {

    foreach ($Employee in $BirthdayEmployees) {

        $Subject = "🎂 Birthday Notification - $($Employee.Name)"

        $Body = @"
Hello Team,

Today is $($Employee.Name)'s Birthday! 🎂🎉

Date of Birth: $($Employee.DateOfBirth)

Please wish $($Employee.Name)
a very Happy Birthday!

Regards,
DevOps Automation
"@

        # Send email through Mailpit
        Send-MailMessage `
            -From $From `
            -To $To `
            -Subject $Subject `
            -Body $Body `
            -SmtpServer $SmtpServer `
            -Port $SmtpPort

        Write-Host "Birthday notification sent for $($Employee.Name)"
    }

}
else {

    Write-Host "No birthday today."
}