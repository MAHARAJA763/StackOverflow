import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class UserJobPreferenceBase {

//#region userJobPreferenceId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userJobPreferenceId : number;
//#endregion userJobPreferenceId Prop


//#region jobTagId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        jobTagId : number;
//#endregion jobTagId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop

}