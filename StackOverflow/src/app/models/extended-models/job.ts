import {JobBase} from '../database-models/job-base';
import {CompanyBase} from '../database-models/company-base';
import {JobLocationBase} from '../database-models/job-location-base';
import {JobPreferenceBase} from '../database-models/job-preference-base';
//Generated Imports
export class Job extends JobBase 
{




//#region Generated Reference Properties
//#region company Prop
        company : CompanyBase;
//#endregion company Prop

//#region jobLocations Prop
        jobLocations : JobLocationBase[];
//#endregion jobLocations Prop

//#region jobPreferences Prop
        jobPreferences : JobPreferenceBase[];
//#endregion jobPreferences Prop

//#endregion Generated Reference Properties
}