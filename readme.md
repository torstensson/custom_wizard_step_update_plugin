# Secondary Custom Wizard plugin

add functionality to load stored input values from older steps

You can add a step handler using CustomWizard::Builder.add_step_handler that gets run after each step of a certain wizard that gives you access to all the fields of the wizard and the values submitted up to that point.