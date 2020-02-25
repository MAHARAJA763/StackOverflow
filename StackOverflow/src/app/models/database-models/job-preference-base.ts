import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class JobPreferenceBase {

//#region jobPreferenceId Prop
        @prop()
        jobPreferenceId : number;
//#endregion jobPreferenceId Prop


//#region jobId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        jobId : number;
//#endregion jobId Prop


//#region jobTagId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        jobTagId : number;
//#endregion jobTagId Prop





}