variable "mykeynames" {
  type = map
  default = {"ram" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhs7cKOUxkj9jkzPZvdu2NNnAw41wjCpLCnbzIm/8TRQ7TahiyHv3YnJObUJh2TgRS4M/92P8uiT+RI+BAaB8QrYAM5SueszVeneI7l0YLoCw2RnI3ytY+NgnibxMTDITaoJGXCQ1BSpJMHROD6XUqz/yYdJkO93UHDmnbn8QnTfxTD7mGNDnzpu65be6hDqkh7OCsrUnm2sRIywJklyDghG9YRRm0pYw74JTB47CiflA+q30AMn4Un7so4ZoTK9Nyy3XwrhRgqnpM/YJtylts92F2N0+QPoTB6knOx2BJwrMMOjp8p7NtBViSSbEj1BHFh9ZUKFyobe62aR1KzpK9 ec2-user@terraform",
             "bam" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3FFkDmlZ1z8hN/VQbn9dxeSMh0GS9+NGFdEVjdcpcZmA0cU/iIqMBi7tWU9q3mhvBZChaEA9TkqWvywFzokmOhDwG+gC4JSYfDqRU5L+iUIgi4B1EpFHbfakAHGy9XF9Hqyf+pvJp6v/mm2EnVMiTsBUneTts+uG+agi7NO933HY5zgnUxZzMv0Ua7jzw8V1tXnVmhwdU5/gnSMo2JUlEx5bEit6eTlzZHk/wjetN9nSycT9gk3PG5ESNr74VQE8SdgId5MLBvBJg29X1lBtblxlUxThul3h8BqBCClHIFo9PADWl3kS5nm7zBYrivf9fm5g6YH4o4XPqpELXIGYp ec2-user@terraform",
             "mam" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBQsPh4e+h3Z4hI3yTqNuG8XvBXBAZEN7LyNexm9NsNoOokUm1ZB+CJ/XND2qZQKD5tkYEw6lwYcwOdEgUo2D+W2rM0lO/Ajg7xStiFSDMFWXoQ8/L+Vh7ZZJThE66ff7xr6fCJcO0lCbfRFawL0XspP45GXcaPtBsSWRV1IEWHAtqM8P0IXeIzAfI5K8grJlaSp2yKR/4DLLoGmCzHVBRk9FdxPr6X5XjkOsXz/0vmPSwCpU81xJk0+AsTp5skjZCTzV/PLTvzVvBvDmYShdFsuzQ5yTPF2gHoh1K4KXnKl1w04XWNm18ootETwbjQMnv6LHKVpEnd+oz5dscdi/h ec2-user@terraform"
             }
}

resource "aws_key_pair" "mykey" {
  for_each = var.mykeynames
  key_name = each.key
  public_key = each.value
}
