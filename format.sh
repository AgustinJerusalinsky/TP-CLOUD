find . -name "*.tf" | xargs -I {} terraform fmt {}