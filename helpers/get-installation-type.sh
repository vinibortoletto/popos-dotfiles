echo "Select installation type:"
echo "(1) Desktop"
echo "(2) Laptop"
read -p "Enter your choice (1 or 2): " choice

# Validate user input
if [ "$choice" == "1" ]; then
    installation_type="Desktop"
elif [ "$choice" == "2" ]; then
    installation_type="Laptop"
else
    echo "Invalid choice. Please enter 1 or 2."
    exit 1
fi
