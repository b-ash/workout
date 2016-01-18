USE Workout;

INSERT INTO `user` (`name`, `secret`) VALUES ('Bash', 'iworkout');
INSERT INTO `user` (`name`, `secret`) VALUES ('Chris', 'thebox');
INSERT INTO `user` (`name`, `secret`) VALUES ('DJ', 'babygirl');

INSERT INTO  `exerciseType` (`name`) VALUES ('Chest'); # 1
INSERT INTO  `exerciseType` (`name`) VALUES ('Back'); # 2
INSERT INTO  `exerciseType` (`name`) VALUES ('Biceps'); # 3
INSERT INTO  `exerciseType` (`name`) VALUES ('Triceps'); # 4
INSERT INTO  `exerciseType` (`name`) VALUES ('Forearms'); # 5
INSERT INTO  `exerciseType` (`name`) VALUES ('Shoulders'); # 6
INSERT INTO  `exerciseType` (`name`) VALUES ('Legs'); # 7

# Pushups
INSERT INTO `exercise` (`name`, `type`) VALUES ('Standard Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Military Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Diamond Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Decline Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Wide Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Diamond Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Dive-bomber Push-ups', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Pike Presses', 1);

# Chest
INSERT INTO `exercise` (`name`, `type`) VALUES ('Flat Bench', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Incline Bench', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Decline Bench', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Chest Flyes', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Incline Chest Flyes', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Partial Chest Flyes', 1);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Close Grip Bench', 1);

# Pullups
INSERT INTO `exercise` (`name`, `type`) VALUES ('Standard Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Reverse Grip Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Wide Grip Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Close Grip Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Parallel Grip Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Rock Climbing Hold Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Lever Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Corn-Cob Pull-ups', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Twenty-Ones (Pull-ups)', 2);
INSERT INTO `exercise` (`name`, `type`, `description`) VALUES ('Switch Grip Pull-ups', 2, 'Switch every 2 reps');
INSERT INTO `exercise` (`name`, `type`, `description`) VALUES ('Towell Pull-ups', 2, 'Switch every 2 reps');
INSERT INTO `exercise` (`name`, `type`, `description`) VALUES ('Mason Grip Pull-ups', 2, 'One hand is reverse, one is standard');

# Back
INSERT INTO `exercise` (`name`, `type`) VALUES ('Single Arm Dumbbell Rows', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Barbell Rows', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Reverse Grip Dumbbell Rows', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Heavy Pants', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Back Flyes', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Elbow-Out Lawnmowers', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Congdon Locomotive', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Dumbbell Pullover', 2);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Deadlift', 2);

# Biceps
INSERT INTO `exercise` (`name`, `type`) VALUES ('Two Arm Bicep Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('One Arm Full Supination Concentration Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('In and Out Bicep Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Static Arm Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Crazy Eights', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Crouching Cohen Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Congdon Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Hammer Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('1,1,3 Hammer Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Seated One Arm Concentration Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Preacher Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('One Arm Cross-Body Curls', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Twenty-Ones (Bicep Curls)', 3);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Strip Set Bicep Curls', 3);

# Triceps
INSERT INTO `exercise` (`name`, `type`) VALUES ('Two Arm Tricep Kickbacks', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Single Arm Tricep Kickbacks', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Lying Down Tricep Extensions', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Flip Grip Tricep Kickbacks', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Two Arm Tricep Kickback', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Chair Dips', 4);
INSERT INTO `exercise` (`name`, `type`, `description`) VALUES ('Dips', 4, 'Dips on a parallel-grip dip machine');
INSERT INTO `exercise` (`name`, `type`) VALUES ('Side-Tri-Rise', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Seated Overhead Tricep Extensions', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Skullcrushers', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Throw The Bomb', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Side Leaning Tricep Extensions', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Front-to-Back Tricep Extensions', 4);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Dumbbell Cross-Body Blows', 4);

# Forearms
INSERT INTO `exercise` (`name`, `type`) VALUES ('Forearm Curls', 5);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Reverse Forearm Curls', 5);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Forearm Sandwich', 5);

# Shoulders
INSERT INTO `exercise` (`name`, `type`) VALUES ('Alternating Shoulder Press', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Shoulder Press', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('1,1,2 Shoulder Press', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('1,1,2 Front Raise', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('In-and-Out Shoulder Flyes', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Seated Two Angle Shoulder Flyes', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Scarecrows', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Six-Way Shoulder Flyes', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Sagi Six-Way', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Upright Rows', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Weighted Circles', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Y-Press', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Deep Swimmer Press', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Shrugs', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Scap Trap', 6);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Rear Delt Raise', 6);

# Legs
INSERT INTO `exercise` (`name`, `type`) VALUES ('Sumo Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Alternating Lunge', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Step-Up to Reverse Lunge', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Parallel Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Bulgarian Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Straight Leg Deadlift', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Single Leg Calf Raise', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Jump Knee Tuck', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Front Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Back Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Front-to-Back Lunge', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Split Leg Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Alternating Side Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Wall Squat', 7);
INSERT INTO `exercise` (`name`, `type`) VALUES ('Single Leg Wall Squat', 7);
INSERT INTO `exercise` (`name`, `type`, `description`) VALUES ('3-Way Calf Raise', 7, 'Toes out, feet parallel, toes in');

# Routines
INSERT INTO `routine` (`name`, `creator`) VALUES ('P90X Chest and Back', 1);
# Round 1
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 1, 1);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 18, 2);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 2, 3);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 17, 4);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 5, 5);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 15, 6);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 11, 7);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 31, 8);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 6, 9);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 28, 10);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 7, 11);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 32, 12);
# Round 2
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 18, 13);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 1, 14);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 17, 15);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 2, 16);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 15, 17);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 5, 18);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 31, 19);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 11, 20);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 28, 21);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 6, 22);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 32, 23);
INSERT INTO `routineExercise` (`routineId`, `exerciseId`, `position`) VALUES (1, 7, 24);

# Sets
# Round 1
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 1,  1,  20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 18, 2,  10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 2,  3,  20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 17, 4,  10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 5,  5,  20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 15, 6,  10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 11, 7,  15, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 31, 8,  10, 30, 20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 6,  9,  15, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 28, 10, 12, 35, 20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 7,  11, 15, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 32, 12, 16, 15, 20160111);
# Round 2
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 18, 13, 10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 1,  14, 20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 17, 15, 10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 2,  16, 20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 15, 17, 10, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 5,  18, 20, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 31, 19, 15, 30, 20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 11, 20, 15, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 28, 21, 12, 35, 20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 6,  22, 15, 0,  20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 32, 23, 16, 20, 20160111);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 7,  24, 15, 0,  20160111);

# Round 1
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 1,  1,  10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 18, 2,  5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 2,  3,  10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 17, 4,  5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 5,  5,  10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 15, 6,  5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 11, 7,  10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 31, 8,  8,  30, 20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 6,  9,  10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 28, 10, 12, 30, 20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 7,  11, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 32, 12, 16, 10, 20160104);
# Round 2
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 18, 13, 5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 1,  14, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 17, 15, 5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 2,  16, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 15, 17, 5,  0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 5,  18, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 31, 19, 10, 30, 20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 11, 20, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 28, 21, 10, 30, 20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 6,  22, 10, 0,  20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 32, 23, 16, 15, 20160104);
INSERT INTO `set` (`userId`, `routineId`, `exerciseId`, `position`, `reps`, `weight`, `dateInt`) VALUES (1, 1, 7,  24, 10, 0,  20160104);
