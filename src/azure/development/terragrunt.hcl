terraform {
    source = "git@github.com:magneoe/converter.git//infrastructure-modules/azure/converter"
}

inputs = {
    location = "norwayeast"
    environment = "development"
}