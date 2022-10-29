			"Generic SYNTAX file for
			    The ZORK Trilogy
		       started on 7/21/83 by SEM"

^L

"Buzzwords, Prepositions and Directions"

<BUZZ AGAIN G OOPS>

<BUZZ A AN THE IS AND OF THEN ALL ONE BUT EXCEPT \. \, \" YES NO Y HERE>

<COND (<==? ,ZORK-NUMBER 2>
       <BUZZ FEEBLE FUMBLE FEAR FILCH FREEZE FALL FRY FLUORESCE
	     FERMENT FIERCE FLOAT FIREPROOF FENCE FUDGE FANTASIZE
	     FROTZ OZMOO>)
      (<==? ,ZORK-NUMBER 3>
       <BUZZ FROTZ OZMOO>)>

<SYNONYM WITH USING THROUGH THRU>
<SYNONYM IN INSIDE INTO>
<SYNONYM ON ONTO>
<SYNONYM UNDER UNDERNEATH BENEATH BELOW>

<SYNONYM NORTH N>
<SYNONYM SOUTH S>
<SYNONYM EAST E>
<SYNONYM WEST W>
<SYNONYM DOWN D>
<SYNONYM UP U>
<SYNONYM NW NORTHWEST>
<SYNONYM NE NORTHE>
<SYNONYM SW SOUTHWEST>
<SYNONYM SE SOUTHE>

^L

"Game Commands"

<SYNTAX VERBOSE = V-VERBOSE>

<SYNTAX BRIEF = V-BRIEF>

<SYNTAX SUPER = V-SUPER-BRIEF>
<SYNONYM SUPER SUPERBRIEF>

<SYNTAX DIAGNOSE = V-DIAGNOSE>

<SYNTAX INVENTORY = V-INVENTORY>
<SYNONYM INVENTORY I>

<SYNTAX QUIT = V-QUIT>
<SYNONYM QUIT Q>

<SYNTAX RESTART = V-RESTART>

<SYNTAX RESTORE = V-RESTORE>

<SYNTAX SAVE = V-SAVE>

<SYNTAX SCORE = V-SCORE>

<SYNTAX SCRIPT = V-SCRIPT>

<SYNTAX UNSCRIPT = V-UNSCRIPT>

<SYNTAX VERSION = V-VERSION>

<SYNTAX $VERIFY = V-VERIFY>

<SYNTAX \#RANDOM OBJECT = V-RANDOM>

<SYNTAX \#COMMAND = V-COMMAND-FILE>

<SYNTAX \#RECORD = V-RECORD>

<SYNTAX \#UNRECORD = V-UNRECORD>

^L

"Real Verbs"

<SYNTAX ACTIVATE OBJECT (FIND LIGHTBIT)
	(HELD CARRIED ON-GROUND IN-ROOM) = V-LAMP-ON>

<SYNTAX ANSWER = V-ANSWER>
<SYNTAX ANSWER OBJECT = V-REPLY>
<SYNONYM ANSWER REPLY>

<SYNTAX APPLY OBJECT TO OBJECT = V-PUT PRE-PUT>

<COND (<==? ,ZORK-NUMBER 2>
       <SYNTAX ATTACK OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	       = V-ATTACK>)>

<SYNTAX ATTACK OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-ATTACK>
<SYNONYM ATTACK FIGHT HURT INJURE HIT>

<SYNTAX BACK = V-BACK>

<SYNTAX BLAST = V-BLAST>

<SYNTAX BLOW OUT OBJECT = V-LAMP-OFF>
<SYNTAX BLOW UP	OBJECT WITH
	OBJECT (FIND TOOLBIT) (ON-GROUND IN-ROOM HELD CARRIED) = V-INFLATE>
<SYNTAX BLOW UP OBJECT = V-BLAST>
<SYNTAX BLOW IN OBJECT = V-BREATHE>

<SYNTAX BOARD OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>

<SYNTAX BRUSH OBJECT (HELD CARRIED ON-GROUND IN-ROOM) = V-BRUSH>
<SYNTAX BRUSH OBJECT (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT = V-BRUSH>
<SYNONYM BRUSH CLEAN>

<SYNTAX BUG = V-BUG>

<SYNTAX BURN OBJECT (FIND BURNBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT (FIND FLAMEBIT) (HELD CARRIED ON-GROUND IN-ROOM HAVE)
	= V-BURN PRE-BURN>
<SYNTAX BURN DOWN OBJECT (FIND BURNBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT (FIND FLAMEBIT) (HELD CARRIED ON-GROUND IN-ROOM HAVE)
	= V-BURN PRE-BURN>
<SYNONYM BURN INCINERATE IGNITE>

<SYNTAX CHOMP = V-CHOMP>
<SYNONYM CHOMP LOSE BARF>

<SYNTAX CLIMB UP OBJECT (FIND RMUNGBIT) = V-CLIMB-UP>
<SYNTAX CLIMB UP OBJECT (FIND CLIMBBIT) (ON-GROUND IN-ROOM) = V-CLIMB-UP>
<SYNTAX CLIMB DOWN OBJECT (FIND RMUNGBIT) = V-CLIMB-DOWN>
<SYNTAX CLIMB DOWN OBJECT (FIND CLIMBBIT) (ON-GROUND IN-ROOM) = V-CLIMB-DOWN>
<SYNTAX CLIMB OBJECT (FIND CLIMBBIT) (ON-GROUND IN-ROOM) = V-CLIMB-FOO>
<SYNTAX CLIMB IN OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNTAX CLIMB ON OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-CLIMB-ON>
<SYNTAX CLIMB WITH OBJECT = V-THROUGH>
<SYNONYM CLIMB SIT>	

<SYNTAX CLOSE OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-CLOSE>

<SYNTAX COMMAND OBJECT (FIND ACTORBIT) = V-COMMAND>

<SYNTAX COUNT OBJECT = V-COUNT>

<SYNTAX CROSS OBJECT = V-CROSS>
<SYNONYM CROSS FORD>

<SYNTAX CUT OBJECT WITH OBJECT (FIND WEAPONBIT) (CARRIED HELD) = V-CUT>
<SYNONYM CUT SLICE PIERCE>

<SYNTAX CURSE = V-CURSES>
<SYNTAX CURSE OBJECT (FIND ACTORBIT) = V-CURSES>
<SYNONYM CURSE SHIT FUCK DAMN>

<SYNTAX DEFLATE OBJECT = V-DEFLATE>

<SYNTAX DESTROY OBJECT (ON-GROUND IN-ROOM HELD CARRIED)
	WITH OBJECT (HELD CARRIED TAKE)	= V-MUNG PRE-MUNG>
<SYNTAX DESTROY DOWN OBJECT (ON-GROUND IN-ROOM HELD CARRIED)
	WITH OBJECT (HELD CARRIED TAKE)	= V-MUNG PRE-MUNG>
<SYNTAX DESTROY IN OBJECT (ON-GROUND IN-ROOM HELD CARRIED) = V-OPEN>
<SYNONYM DESTROY DAMAGE BREAK BLOCK SMASH>

<SYNTAX DIG IN OBJECT (ON-GROUND IN-ROOM) = V-DIG>
<SYNTAX DIG IN OBJECT (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND TOOLBIT) (HELD CARRIED HAVE) = V-DIG>
<SYNTAX DIG OBJECT (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND TOOLBIT) (HELD CARRIED HAVE) = V-DIG>

<SYNTAX DISEMBARK OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM)
	= V-DISEMBARK>

<SYNTAX _ROOMS_ = V-ROOMS>

<SYNTAX DISENCHANT OBJECT = V-DISENCHANT>

<SYNTAX DRINK OBJECT (FIND DRINKBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	= V-DRINK>
<SYNTAX DRINK FROM OBJECT (HELD CARRIED) = V-DRINK-FROM>
<SYNONYM DRINK IMBIBE SWALLOW>

<SYNTAX DROP OBJECT (HELD MANY HAVE) = V-DROP PRE-DROP>
<SYNTAX DROP OBJECT (HELD MANY HAVE) DOWN OBJECT = V-PUT PRE-PUT>
<SYNTAX DROP OBJECT (HELD MANY HAVE) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX DROP OBJECT (HELD MANY HAVE) ON OBJECT = V-PUT-ON PRE-PUT>

<SYNTAX EAT OBJECT (FIND FOODBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	= V-EAT>
<SYNONYM EAT CONSUME TASTE BITE>

<SYNTAX ECHO = V-ECHO>

<SYNTAX ENCHANT OBJECT (ON-GROUND IN-ROOM) = V-ENCHANT>

<SYNTAX ENTER = V-ENTER>
<SYNTAX ENTER OBJECT = V-THROUGH>
<SYNTAX EXIT = V-EXIT>
<SYNTAX EXIT OBJECT = V-EXIT>

<SYNTAX EXAMINE OBJECT (MANY) = V-EXAMINE>
<SYNTAX EXAMINE IN OBJECT (HELD CARRIED IN-ROOM ON-GROUND MANY)
	= V-LOOK-INSIDE>
<SYNTAX EXAMINE ON OBJECT (HELD CARRIED IN-ROOM ON-GROUND MANY)
	= V-LOOK-INSIDE>
<SYNONYM EXAMINE DESCRIBE WHAT WHATS>

<SYNTAX EXORCISE OBJECT = V-EXORCISE>
<SYNTAX EXORCISE OUT OBJECT (FIND ACTORBIT) = V-EXORCISE>
<SYNTAX EXORCISE AWAY OBJECT (FIND ACTORBIT) = V-EXORCISE>
<SYNONYM EXORCISE BANISH CAST DRIVE BEGONE>

<SYNTAX EXTINGUISH OBJECT (FIND ONBIT)
	(HELD CARRIED ON-GROUND IN-ROOM TAKE HAVE) = V-LAMP-OFF>
<SYNONYM EXTINGUISH DOUSE>

<SYNTAX FILL OBJECT (FIND CONTBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT = V-FILL PRE-FILL>
<SYNTAX FILL OBJECT (FIND CONTBIT)
	(HELD CARRIED ON-GROUND IN-ROOM) = V-FILL PRE-FILL>

<SYNTAX FIND OBJECT = V-FIND>
<SYNONYM FIND WHERE SEEK SEE>

<SYNTAX FOLLOW = V-FOLLOW>
<SYNTAX FOLLOW OBJECT = V-FOLLOW>
<SYNONYM FOLLOW PURSUE CHASE COME>

<SYNTAX FROBOZZ = V-FROBOZZ>

<SYNTAX GIVE OBJECT (MANY HELD HAVE)
	TO OBJECT (FIND ACTORBIT) (ON-GROUND) = V-GIVE PRE-GIVE>
<SYNTAX GIVE OBJECT (FIND ACTORBIT) (ON-GROUND)
	OBJECT (MANY HELD HAVE)	= V-SGIVE PRE-SGIVE>
<SYNONYM GIVE DONATE OFFER FEED>
<COND (<N==? ,ZORK-NUMBER 3>
       <SYNONYM GIVE HAND>)>

<SYNTAX HATCH OBJECT = V-HATCH>

<SYNTAX HELLO = V-HELLO>
<SYNTAX HELLO OBJECT = V-HELLO>
<SYNONYM HELLO HI>

<SYNTAX INCANT = V-INCANT>
<SYNONYM INCANT CHANT>

<SYNTAX INFLAT OBJECT WITH
	OBJECT (FIND TOOLBIT) (ON-GROUND IN-ROOM HELD CARRIED) = V-INFLATE>

<SYNTAX JUMP = V-LEAP>
<SYNTAX JUMP OVER OBJECT = V-LEAP>
<SYNTAX JUMP ACROSS OBJECT = V-LEAP>
<SYNTAX JUMP IN OBJECT = V-LEAP>
<SYNTAX JUMP FROM OBJECT = V-LEAP>
<SYNTAX JUMP OFF OBJECT = V-LEAP>
<SYNONYM JUMP LEAP DIVE>

<SYNTAX KICK OBJECT = V-KICK>
<SYNONYM KICK TAUNT>

<COND (<==? ,ZORK-NUMBER 2>
       <SYNTAX KILL OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	       = V-ATTACK>)>

<SYNTAX KILL OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-ATTACK>
<SYNONYM KILL MURDER SLAY DISPATCH>

<SYNTAX STAB OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-STAB>
<SYNTAX STAB OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-ATTACK>

<SYNTAX KISS OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-KISS>

<SYNTAX KNOCK AT OBJECT = V-KNOCK>
<SYNTAX KNOCK ON OBJECT = V-KNOCK>
<SYNTAX KNOCK DOWN OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-ATTACK>
<SYNONYM KNOCK RAP>

<SYNTAX LAUNCH OBJECT (FIND VEHBIT) = V-LAUNCH>

<SYNTAX LEAN ON OBJECT (HELD HAVE) = V-LEAN-ON>

<SYNTAX LEAVE = V-LEAVE>
<SYNTAX LEAVE OBJECT = V-DROP PRE-DROP>

<SYNTAX LIGHT OBJECT (FIND LIGHTBIT)
	(HELD CARRIED ON-GROUND IN-ROOM TAKE HAVE) = V-LAMP-ON>
<SYNTAX LIGHT OBJECT (FIND LIGHTBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT (FIND FLAMEBIT) (HELD CARRIED TAKE HAVE) = V-BURN PRE-BURN>

<SYNTAX LISTEN TO OBJECT = V-LISTEN>
<SYNTAX LISTEN FOR OBJECT = V-LISTEN>

<SYNTAX LOCK OBJECT (ON-GROUND IN-ROOM)	WITH
	OBJECT (FIND TOOLBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE) = V-LOCK>

<SYNTAX LOOK = V-LOOK>
<SYNTAX LOOK AROUND OBJECT (FIND RMUNGBIT) = V-LOOK>
<SYNTAX LOOK UP OBJECT (FIND RMUNGBIT) = V-LOOK>
<SYNTAX LOOK DOWN OBJECT (FIND RMUNGBIT) = V-LOOK>
<SYNTAX LOOK AT OBJECT (HELD CARRIED ON-GROUND IN-ROOM MANY) = V-EXAMINE>
<SYNTAX LOOK ON OBJECT = V-LOOK-ON>
<SYNTAX LOOK WITH OBJECT (HELD CARRIED ON-GROUND IN-ROOM MANY) = V-LOOK-INSIDE>
<SYNTAX LOOK UNDER OBJECT = V-LOOK-UNDER>
<SYNTAX LOOK BEHIND OBJECT = V-LOOK-BEHIND>
<SYNTAX LOOK IN OBJECT (HELD CARRIED ON-GROUND IN-ROOM MANY) = V-LOOK-INSIDE>
<SYNTAX LOOK AT OBJECT (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT = V-READ PRE-READ>
<SYNTAX LOOK FOR OBJECT = V-FIND>
<SYNONYM LOOK L STARE GAZE>

<SYNTAX LOWER OBJECT = V-LOWER>

<SYNTAX LUBRICATE OBJECT WITH OBJECT (HELD CARRIED) = V-OIL>
<SYNONYM LUBRICATE OIL GREASE>

<SYNTAX MAKE OBJECT = V-MAKE>

<SYNTAX MELT OBJECT
	WITH OBJECT (FIND FLAMEBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-MELT>
<SYNONYM MELT LIQUIFY>

<SYNTAX MOVE OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>
<SYNTAX MOVE OBJECT (ON-GROUND IN-ROOM) OBJECT = V-PUSH-TO>
<SYNTAX MOVE OBJECT (ON-GROUND IN-ROOM) TO OBJECT = V-PUSH-TO>
<SYNTAX MOVE OBJECT (HELD MANY HAVE) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX MOVE OBJECT WITH OBJECT (FIND TOOLBIT) = V-TURN PRE-TURN>
<SYNTAX ROLL UP OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>
<SYNTAX ROLL OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>

<SYNTAX MUMBLE = V-MUMBLE>
<SYNONYM MUMBLE SIGH>

<SYNTAX ODYSSEUS = V-ODYSSEUS>
<SYNONYM ODYSSEUS ULYSSES>

<SYNTAX OPEN OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-OPEN>
<SYNTAX OPEN UP	OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	= V-OPEN>
<SYNTAX OPEN OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM) WITH
	OBJECT (FIND TOOLBIT) (ON-GROUND IN-ROOM HELD CARRIED HAVE) = V-OPEN>

<SYNTAX PICK OBJECT = V-PICK>
<SYNTAX PICK OBJECT WITH OBJECT = V-PICK>
<SYNTAX PICK UP	OBJECT (FIND TAKEBIT) (ON-GROUND MANY) = V-TAKE PRE-TAKE>

<SYNTAX PLAY OBJECT = V-PLAY>

<SYNTAX PLUG OBJECT WITH OBJECT = V-PLUG>
<SYNONYM PLUG GLUE PATCH REPAIR FIX>

<SYNTAX PLUGH = V-ADVENT>
<SYNONYM PLUGH XYZZY>

<SYNTAX POKE OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-MUNG PRE-MUNG>
<SYNTAX PUNCTURE OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-MUNG PRE-MUNG>

<SYNTAX POUR OBJECT (HELD CARRIED) = V-DROP PRE-DROP>
<SYNTAX POUR OBJECT (HELD CARRIED) IN OBJECT = V-DROP PRE-DROP>
<SYNTAX POUR OBJECT (HELD CARRIED) ON OBJECT = V-POUR-ON>
<SYNTAX POUR OBJECT (HELD CARRIED) FROM OBJECT = V-DROP PRE-DROP>
<SYNONYM POUR SPILL>

<SYNTAX PRAY = V-PRAY>

<SYNTAX PULL OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>
<SYNTAX PULL ON OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>
<SYNTAX PULL UP OBJECT (ON-GROUND IN-ROOM) = V-MOVE PRE-MOVE>
<SYNONYM PULL TUG YANK>

<SYNTAX PUMP UP OBJECT = V-PUMP>
<SYNTAX PUMP UP OBJECT WITH OBJECT = V-PUMP>

<SYNTAX PUSH OBJECT (IN-ROOM ON-GROUND) OBJECT = V-PUSH-TO>
<SYNTAX PUSH OBJECT (IN-ROOM ON-GROUND) TO OBJECT = V-PUSH-TO>
<SYNTAX PUSH OBJECT (IN-ROOM ON-GROUND MANY) = V-PUSH>
<SYNTAX PUSH ON OBJECT (IN-ROOM ON-GROUND MANY) = V-PUSH>
<SYNTAX PUSH OBJECT WITH OBJECT (FIND TOOLBIT) = V-TURN PRE-TURN>
<SYNTAX PUSH OBJECT UNDER OBJECT = V-PUT-UNDER>
<SYNONYM PUSH PRESS>

<SYNTAX PUT OBJECT (HELD MANY HAVE) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY HAVE) ON OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT DOWN OBJECT (HELD MANY) = V-DROP PRE-DROP>
<SYNTAX PUT OBJECT (HELD HAVE) UNDER OBJECT = V-PUT-UNDER> 
<SYNTAX PUT OUT OBJECT (FIND ONBIT)
	(HELD CARRIED ON-GROUND IN-ROOM TAKE HAVE) = V-LAMP-OFF>
<SYNTAX PUT ON OBJECT (IN-ROOM ON-GROUND CARRIED MANY) = V-WEAR>
<SYNTAX PUT OBJECT (HELD MANY HAVE) BEHIND OBJECT = V-PUT-BEHIND>
<SYNONYM PUT STUFF INSERT PLACE HIDE>

<SYNTAX RAISE OBJECT = V-RAISE>
<SYNTAX RAISE UP OBJECT = V-RAISE>
<SYNONYM RAISE LIFT>

<SYNTAX RAPE OBJECT (FIND ACTORBIT) = V-RAPE>
<SYNONYM RAPE MOLEST>

<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	= V-READ PRE-READ>
<SYNTAX READ FROM OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	= V-READ PRE-READ>
<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	WITH OBJECT = V-READ PRE-READ>
<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	OBJECT = V-READ-PAGE>
<SYNONYM READ SKIM>

<SYNTAX REPENT = V-REPENT>

<SYNTAX RING OBJECT (TAKE) = V-RING>
<SYNTAX RING OBJECT (TAKE) WITH OBJECT = V-RING>
<SYNONYM RING PEAL>

<SYNTAX RUB OBJECT = V-RUB>
<SYNTAX RUB OBJECT WITH OBJECT = V-RUB>
<SYNONYM RUB TOUCH FEEL PAT PET>

<SYNTAX TALK TO OBJECT (FIND ACTORBIT) (IN-ROOM) = V-TELL>
<SYNTAX SAY = V-SAY>

<SYNTAX SEARCH OBJECT = V-SEARCH>
<SYNTAX SEARCH IN OBJECT = V-SEARCH>
<SYNTAX SEARCH FOR OBJECT = V-FIND>

<SYNTAX SEND FOR OBJECT = V-SEND>

<SYNTAX SHAKE OBJECT (HAVE) = V-SHAKE>

<SYNTAX SKIP = V-SKIP>
<SYNONYM SKIP HOP>

<SYNTAX SLIDE OBJECT UNDER OBJECT = V-PUT-UNDER>
<SYNTAX SLIDE OBJECT (IN-ROOM ON-GROUND) OBJECT = V-PUSH-TO>
<SYNTAX SLIDE OBJECT (IN-ROOM ON-GROUND) TO OBJECT = V-PUSH-TO>

<SYNTAX SMELL OBJECT = V-SMELL>
<SYNONYM SMELL SNIFF>

<SYNTAX SPIN OBJECT = V-SPIN>

<SYNTAX SPRAY OBJECT ON OBJECT = V-SPRAY>
<SYNTAX SPRAY OBJECT WITH OBJECT = V-SSPRAY>

<SYNTAX SQUEEZE OBJECT = V-SQUEEZE>
<SYNTAX SQUEEZE OBJECT ON OBJECT = V-PUT PRE-PUT>

<SYNTAX STAND = V-STAND>
<SYNTAX STAND UP OBJECT (FIND RMUNGBIT) = V-STAND>

<SYNTAX STAY = V-STAY>

<SYNTAX STRIKE OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) WITH OBJECT
	(FIND WEAPONBIT) (HELD CARRIED ON-GROUND IN-ROOM HAVE) = V-ATTACK>
<SYNTAX STRIKE OBJECT (ON-GROUND IN-ROOM HELD CARRIED) = V-STRIKE>

<SYNTAX SWIM = V-SWIM>
<SYNTAX SWIM IN OBJECT = V-SWIM>
<SYNTAX SWIM ACROSS OBJECT = V-SWIM>
<SYNONYM SWIM BATHE WADE>

<SYNTAX SWING OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE) = V-SWING>
<SYNTAX SWING OBJECT (FIND WEAPONBIT) (HELD CARRIED HAVE)
	AT OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-SWING>
<SYNONYM SWING THRUST>

<SYNTAX TAKE OBJECT (FIND TAKEBIT) (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX TAKE IN OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNTAX TAKE OUT OBJECT (FIND RMUNGBIT) (ON-GROUND IN-ROOM) = V-DISEMBARK>
<SYNTAX TAKE ON OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-CLIMB-ON>
<SYNTAX TAKE UP OBJECT (FIND RMUNGBIT) = V-STAND>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (CARRIED IN-ROOM MANY)
	OUT OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (CARRIED IN-ROOM MANY)
	OFF OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (IN-ROOM CARRIED MANY)
	FROM OBJECT = V-TAKE PRE-TAKE>
<SYNONYM TAKE GET HOLD CARRY REMOVE GRAB CATCH>

<SYNTAX TELL OBJECT (FIND ACTORBIT) (IN-ROOM) = V-TELL>
<SYNTAX TELL OBJECT (FIND ACTORBIT) (IN-ROOM) ABOUT OBJECT = V-TELL>
<SYNONYM TELL ASK>

<SYNTAX THROW OBJECT (HELD CARRIED HAVE)
	AT OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-THROW>
<SYNTAX THROW OBJECT (HELD CARRIED HAVE)
	WITH OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-THROW>
<SYNTAX THROW OBJECT OBJECT = V-OVERBOARD>
<SYNTAX THROW OBJECT (HELD CARRIED HAVE) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX THROW OBJECT (HELD CARRIED HAVE) ON OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX THROW OBJECT (HELD CARRIED HAVE) OFF OBJECT = V-THROW-OFF>
<SYNTAX THROW OBJECT (HELD CARRIED HAVE) OVER OBJECT = V-THROW-OFF>
<SYNONYM THROW HURL CHUCK TOSS>

<SYNTAX TIE OBJECT TO OBJECT = V-TIE>
<SYNTAX TIE UP OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) WITH OBJECT
	(FIND TOOLBIT) (ON-GROUND IN-ROOM HELD CARRIED HAVE) = V-TIE-UP>
<SYNONYM TIE FASTEN SECURE ATTACH>

<SYNTAX TREASURE = V-TREASURE>
<SYNONYM TREASURE TEMPLE>

<SYNTAX TURN OBJECT (FIND TURNBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT (FIND RMUNGBIT) = V-TURN PRE-TURN>
<SYNTAX TURN ON	OBJECT (FIND LIGHTBIT)
	(HELD CARRIED ON-GROUND IN-ROOM) = V-LAMP-ON>
<SYNTAX TURN ON OBJECT WITH OBJECT (HAVE) = V-LAMP-ON>
<SYNTAX TURN OFF OBJECT (FIND ONBIT)
	(HELD CARRIED ON-GROUND IN-ROOM TAKE HAVE) = V-LAMP-OFF>
<SYNTAX TURN OBJECT (FIND TURNBIT) TO OBJECT = V-TURN PRE-TURN>
<SYNTAX TURN OBJECT (FIND TURNBIT) FOR OBJECT = V-TURN PRE-TURN>
<SYNONYM TURN SET FLIP SHUT>

<SYNTAX UNLOCK OBJECT (ON-GROUND IN-ROOM) WITH OBJECT
	(FIND TOOLBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE) = V-UNLOCK>

<SYNTAX UNTIE OBJECT (ON-GROUND IN-ROOM HELD CARRIED) = V-UNTIE>
<SYNTAX UNTIE OBJECT (ON-GROUND IN-ROOM HELD CARRIED)
	FROM OBJECT = V-UNTIE>
<SYNONYM UNTIE FREE RELEASE UNFASTEN UNATTACH UNHOOK>

<SYNTAX WAIT = V-WAIT>
<SYNONYM WAIT Z>

<SYNTAX WAKE OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-ALARM>
<SYNTAX WAKE UP OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-ALARM>
<SYNONYM WAKE AWAKE SURPRISE STARTLE>

<SYNTAX WALK = V-WALK-AROUND>
<SYNTAX WALK OBJECT = V-WALK>
<SYNTAX WALK AWAY OBJECT = V-WALK>
<SYNTAX WALK IN OBJECT = V-THROUGH>
<SYNTAX WALK WITH OBJECT = V-THROUGH>
<SYNTAX WALK ON OBJECT = V-THROUGH>
<SYNTAX WALK OVER OBJECT = V-LEAP>
<SYNTAX WALK TO OBJECT = V-WALK-TO>
<SYNTAX WALK AROUND OBJECT = V-WALK-AROUND>
<SYNTAX WALK UP OBJECT (FIND CLIMBBIT) (ON-GROUND IN-ROOM) = V-CLIMB-UP>
<SYNTAX WALK DOWN OBJECT (FIND CLIMBBIT) (ON-GROUND IN-ROOM) = V-CLIMB-DOWN>
<SYNONYM WALK GO RUN PROCEED STEP>

<SYNTAX WAVE OBJECT (HELD CARRIED TAKE HAVE) = V-WAVE>
<SYNTAX WAVE OBJECT (HELD CARRIED TAKE HAVE) AT OBJECT = V-WAVE>
<SYNTAX WAVE AT OBJECT = V-WAVE>
<SYNONYM WAVE BRANDISH>

<SYNTAX WEAR OBJECT = V-WEAR>

<SYNTAX WIN = V-WIN>
<SYNONYM WIN WINNAGE>

<SYNTAX WIND OBJECT = V-WIND>
<SYNTAX WIND UP OBJECT = V-WIND>

<SYNTAX WISH = V-WISH>

<SYNTAX YELL = V-YELL>
<SYNONYM YELL SCREAM SHOUT>

<SYNTAX ZORK = V-ZORK>
