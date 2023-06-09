       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALARY-CALCULATION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WHO         PIC X(20).
       77  WHERE       PIC X(20).
       77  JOB         PIC X(20).
       77  RATE        PIC 9(3).
       77  HOURS       PIC 9(3).
       77  GROSS-PAY   PIC 9(5).

       PROCEDURE DIVISION.
       DISPLAY   "Enter your name : ".
       ACCEPT    WHO.
       DISPLAY   "Institution you work : ".
       ACCEPT    WHERE.
       DISPLAY   "What is your job : ".
       ACCEPT    JOB.
       DISPLAY   "How much is your hourly rate : ".
       ACCEPT    RATE.
       DISPLAY   "how many hours a day do you work : ".
       ACCEPT    HOURS.
       COMPUTE   GROSS-PAY = HOURS * RATE * 30.
       IF HOURS > 24 
           DISPLAY  "You entered wrong information."
           GOBACK
       END-IF.
       DISPLAY   "Hello " WHO
       DISPLAY   "You work at " WHERE "as a " JOB.
       DISPLAY   "You earn " RATE " per hour for this job, and you work".
       DISPLAY   HOURS " hours per day. In the case, according to".
       DISPLAY   "my calculations, your montly income is " GROSS-PAY.
       STOP RUN.
