import {UserBase} from '../database-models/user-base';
import {ReputationBase} from '../database-models/reputation-base';
import {ScoreBase} from '../database-models/score-base';
import {QuestionBase} from '../database-models/question-base';
import {AnswerBase} from '../database-models/answer-base';
import {ApplicationUserTokenBase} from '../database-models/application-user-token-base';
import {UserPrivilegeBase} from '../database-models/user-privilege-base';
import {UserRoleBase} from '../database-models/user-role-base';
//Generated Imports
export class User extends UserBase 
{




//#region Generated Reference Properties
//#region reputations Prop
        reputations : ReputationBase[];
//#endregion reputations Prop

//#region scores Prop
        scores : ScoreBase[];
//#endregion scores Prop

//#region questions Prop
        questions : QuestionBase[];
//#endregion questions Prop

//#region answers Prop
        answers : AnswerBase[];
//#endregion answers Prop

//#region applicationUserTokens Prop
        applicationUserTokens : ApplicationUserTokenBase[];
//#endregion applicationUserTokens Prop

//#region userPrivileges Prop
        userPrivileges : UserPrivilegeBase[];
//#endregion userPrivileges Prop

//#region userRoles Prop
        userRoles : UserRoleBase[];
//#endregion userRoles Prop

//#endregion Generated Reference Properties
}