import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class WorkingUserBase {

//#region workingUserId Prop
        @prop()
        workingUserId : number;
//#endregion workingUserId Prop


//#region title Prop
        @required()
        @maxLength({value:50})
        title : string;
//#endregion title Prop


//#region companyName Prop
        @required()
        @maxLength({value:50})
        companyName : string;
//#endregion companyName Prop


//#region joiningDate Prop
        @required()
        @maxLength({value:10})
        joiningDate : string;
//#endregion joiningDate Prop


//#region lastWorking Prop
        @required()
        @maxLength({value:10})
        lastWorking : string;
//#endregion lastWorking Prop


//#region userJobPreferenceId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userJobPreferenceId : number;
//#endregion userJobPreferenceId Prop


//#region description Prop
        @required()
        description : string;
//#endregion description Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop

}