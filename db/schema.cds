namespace user20;

entity Address  {
    key id      :   Integer;
        street  :   String(80);
        city    :   String(80);
}

entity Employee {
    key id      :   Integer;
        name    :   String(100);
        Address :   association[0..1] to Address;
}

view EmployeeDetails as select from Employee {
    id, name, Address.{street,city }
}