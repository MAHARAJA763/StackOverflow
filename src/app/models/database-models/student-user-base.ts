import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class StudentUserBase {

//#region studentUserId Prop
        @prop()
        studentUserId : number;
//#endregion studentUserId Prop


//#region degree Prop
        @required()
        @maxLength({value:50})
        degree : string;
//#endregion degree Prop


//#region universityName Prop
        @required()
        @maxLength({value:50})
        universityName : string;
//#endregion universityName Prop


//#region from Prop
        @required()
        @maxLength({value:10})
        from : string;
//#endregion from Prop


//#region to Prop
        @required()
        @maxLength({value:10})
        to : string;
//#endregion to Prop


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