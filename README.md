# User Class with Builder Design Pattern

## Project Overview

This project demonstrates the implementation of the **Builder Design Pattern** for the `User` class. The Builder pattern is used to construct complex objects step-by-step, allowing you to create instances of the `User` class with only the attributes you want to provide.

## Requirements

### Requirement 1: Create User Class

**Title:** Create User Class  
**Description:**  
The `User` class has multiple attributes, including:
- First name (required)
- Last name (required)
- Age (optional)
- Phone (optional)

The `UserBuilder` class is used to set these attributes. Finally, the `build()` function is called to create an instance of the `User` class with the provided data.

**Note:** The first name and last name are required attributes when instantiating a `User` object.
