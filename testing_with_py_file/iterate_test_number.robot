*** Settings ***
Library    iterate_over.py    WITH NAME    IT_TEST

*** Variables ***


*** Test Cases ***

Generate Data And Test Integer
    @{LIST}=    IT_TEST.add_one_to_integer
    # set suite variable  @{LIST}
    
    FOR    ${element}    IN    @{LIST}
        # Log    ${element}
        IF    ${element}%${1} == ${element}
            CONTINUE
        END
    END


*** Keywords ***