using {user20 as dbschema} from '../db/schema';

@path: 'service/user20'

service User20info {
    entity Address         as projection on dbschema.Address;
    entity Employee        as projection on dbschema.Employee;
    entity EmployeeDetails as projection on dbschema.EmployeeDetails;
}