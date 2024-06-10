# Swag Labs Automation

## Project Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/sarfojoe/SwagLab.git
    cd SwagLabsAutomation
    ```

2. Create and activate a virtual environment:
    ```sh
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. Install dependencies:
    ```sh
    pip install -r requirements.txt
    ```

4. Run the tests:
    ```sh
    robot -d Reports --Variable STANDARD_USER:<user Name here> --Variable PASSWORD:<password here> ./SwaglabsTests.robot
    ```

## Project Structure

- `SwagLabsTests.robot`: Contains test cases for the specified scenarios.
- `keywords.robot`: Contains reusable keywords.
- `Variables.robot`: Contains reusable variables.
