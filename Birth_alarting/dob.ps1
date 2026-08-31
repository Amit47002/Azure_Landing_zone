# CSV file path
$CsvPath = "C:\DevOps-Insider-batch-18\08-31-2026\Azure_Landing_zone\Birth_alarting\dob.csv"

# Mailpit SMTP configuration
$SmtpServer = "localhost"
$SmtpPort   = 1025
$From       = "devops@local.test"
$To         = "hr@local.test"

# Today's date
$Today = Get-Date

Write-Host "Checking birthday for: $($Today.ToString('yyyy-MM-dd'))"

# Import CSV
$Employees = Import-Csv -Path $CsvPath

foreach ($Employee in $Employees) {

    # Convert DateOfBirth from CSV
    $DOB = [datetime]::ParseExact(
        $Employee.DateOfBirth,
        "yyyy-MM-dd",
        $null
    )

    # Check month and day
    if ($DOB.Day -eq $Today.Day -and $DOB.Month -eq $Today.Month) {

        Write-Host "Birthday found: $($Employee.Name)"

        $Subject = "Birthday Alert - $($Employee.Name)"

        $Body = @"
Hello HR,

Today is $($Employee.Name)'s Birthday!

Date of Birth: $($Employee.DateOfBirth)

Please wish them a Happy Birthday!

Regards,
DevOps Team
"@
$SmtpServer = "smtp.gmail.com"
$SmtpPort   = 587

$From = "yourgmail@gmail.com"
$To   = "hr@gmail.com"

$Username = "yourgmail@gmail.com"
$Password = "YOUR_APP_PASSWORD"

$Credential = New-Object System.Management.Automation.PSCredential(
    $Username,
    (ConvertTo-SecureString $Password -AsPlainText -Force)
)

        Write-Host "Birthday notification sent for $($Employee.Name)"
    }
}