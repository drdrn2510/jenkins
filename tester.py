cat << 'EOF' > dummy_app.py
def calculate_total(price, tax):
    # Intentional SonarQube violation: Unused variable
    unused_variable = 100
    
    # Intentional bug: Using 'is' for literal comparison
    if price is 0:
        return 0
        
    return price + (price * tax)

print(calculate_total(10, 0.05))
EOF