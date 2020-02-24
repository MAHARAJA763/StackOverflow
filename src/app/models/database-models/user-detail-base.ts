import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class UserDetailBase {

//#region userDetailId Prop
        @prop()
        userDetailId : number;
//#endregion userDetailId Prop


//#region fullName Prop
        @maxLength({value:50})
        fullName : string;
//#endregion fullName Prop


//#region profileImage Prop
        @maxLength({value:50})
        profileImage : string;
//#endregion profileImage Prop


//#region aboutMe Prop
        @prop()
        aboutMe : string;
//#endregion aboutMe Prop


//#region location Prop
        @maxLength({value:50})
        location : string;
//#endregion location Prop


//#region websitLink Prop
        @prop()
        websitLink : string;
//#endregion websitLink Prop


//#region githubUsername Prop
        @maxLength({value:50})
        githubUsername : string;
//#endregion githubUsername Prop


//#region twitterUserName Prop
        @maxLength({value:50})
        twitterUserName : string;
//#endregion twitterUserName Prop


//#region userOccupationId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userOccupationId : number;
//#endregion userOccupationId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop

}