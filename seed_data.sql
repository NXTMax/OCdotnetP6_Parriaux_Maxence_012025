-- Insertion des produits
INSERT INTO [dbo].[Product] ([Name]) VALUES
    (N'Trader en Herbe'), -- 1
    (N'Maître des Investissements'), -- 2
    (N'Planificateur d''Entraînement'), -- 3
    (N'Planificateur d''Anxiété sociale'); -- 4

-- Insertion des systèmes d'exploitation
INSERT INTO [dbo].[OperatingSystem] ([Name]) VALUES
    (N'Linux'), -- 1
    (N'MacOS'), -- 2
    (N'Windows'), -- 3
    (N'Android'), -- 4
    (N'iOS'), -- 5
    (N'Windows Mobile'); -- 6

-- Insertion des statuts de ticket
INSERT INTO [dbo].[TicketStatus] ([Name]) VALUES
    (N'Résolu'),
    (N'En cours');

-- Insertion des builds de produits
INSERT INTO [dbo].[ProductBuild] ([Product_ID], [Version], [OS_ID]) VALUES
    (1, N'1.0', 1), -- 1
    (1, N'1.0', 3), -- 2
    (1, N'1.1', 1), -- 3
    (1, N'1.1', 2), -- 4
    (1, N'1.1', 3), -- 5
    (1, N'1.2', 1), -- 6
    (1, N'1.2', 2), -- 7
    (1, N'1.2', 3), -- 8
    (1, N'1.2', 4), -- 9
    (1, N'1.2', 5), -- 10
    (1, N'1.2', 6), -- 11
    (1, N'1.3', 2), -- 12
    (1, N'1.3', 3), -- 13
    (1, N'1.3', 4), -- 14
    (1, N'1.3', 5), -- 15
    
    (2, N'1.0', 2), -- 16
    (2, N'1.0', 5), -- 17
    (2, N'2.0', 2), -- 18
    (2, N'2.0', 4), -- 19
    (2, N'2.0', 5), -- 20
    (2, N'2.1', 2), -- 21
    (2, N'2.1', 3), -- 22
    (2, N'2.1', 4), -- 23
    (2, N'2.1', 5), -- 24

    (3, N'1.0', 1), -- 25
    (3, N'1.0', 2), -- 26
    (3, N'1.1', 1), -- 27
    (3, N'1.1', 2), -- 28
    (3, N'1.1', 3), -- 29
    (3, N'1.1', 4), -- 30
    (3, N'1.1', 5), -- 31
    (3, N'1.1', 6), -- 32
    (3, N'2.0', 2), -- 33
    (3, N'2.0', 3), -- 34
    (3, N'2.0', 4), -- 35
    (3, N'2.0', 5), -- 36

    (4, N'1.0', 2), -- 37
    (4, N'1.0', 3), -- 38
    (4, N'1.0', 4), -- 39
    (4, N'1.0', 5), -- 40
    (4, N'1.1', 2), -- 41
    (4, N'1.1', 3), -- 42
    (4, N'1.1', 4), -- 43
    (4, N'1.1', 5); -- 44

INSERT INTO [dbo].[Ticket]
    ([Build_ID], [Creation_date], [Resolution_date], [Issue], [Resolution], [Status_ID])
VALUES
    -- Ticket 1 (Trader en Herbe 1.0 Linux)
    (1,
    '2023-01-05',
    NULL,
    N'L''utilisateur indique que l''application n''affiche qu''un écran blanc après la connexion. Seule la barre de menu en haut est visible. Le problème a commencé après une mise à jour système. L''utilisateur a déjà essayé de désinstaller et réinstaller l''application sans succès.',
    NULL,
    2),
    -- Ticket 2 (Maître des Investissements 2.0 Android)
    (19, '2023-02-12', '2023-02-20', 
    N'Plusieurs utilisateurs nous signalent que l''application ne démarre plus sur leurs téléphones Android récents. L''application affiche brièvement le logo puis se ferme immédiatement. Les utilisateurs ont tous mis à jour leurs téléphones vers Android 11 récemment.',
    N'Après investigation avec l''équipe technique, il s''avère que le problème était lié aux nouvelles restrictions de sécurité d''Android 11. Une mise à jour de l''application a été publiée pour corriger ce problème. Les utilisateurs peuvent maintenant mettre à jour l''application via le Play Store.',
    1),

    -- Ticket 3 (Planificateur d'Entraînement 1.1 Windows)
    (29, '2023-03-15', NULL,
    N'L''utilisateur n''arrive pas à connecter sa montre connectée Fitbit à l''application. À chaque tentative de synchronisation, il reçoit le message "Échec de la connexion à l''appareil". Il a vérifié que sa montre est bien reconnue par l''application Fitbit officielle.',
    NULL,
    2),

    -- Ticket 4 (Planificateur d'Anxiété sociale 1.0 iOS)
    (40, '2023-04-01', '2023-04-10',
    N'Les utilisateurs signalent que les notifications de rappel ne fonctionnent pas. Les rappels programmés n''apparaissent pas à l''heure prévue.',
    N'Correction d''un problème dans le système de notifications de l''application. Mise à jour du code pour s''assurer que les rappels sont correctement programmés et affichés.',
    1),

    -- Ticket 5 (Trader en Herbe 1.2 Windows Mobile)
    (11, '2023-04-20', NULL,
    N'L''application se bloque fréquemment lors de la consultation des graphiques de performance des actions. L''utilisateur doit redémarrer l''application pour continuer à l''utiliser.',
    NULL,
    2),

    -- Ticket 6 (Maître des Investissements 1.0 MacOS)
    (16, '2023-05-05', '2023-05-15',
    N'Les utilisateurs signalent que les transactions ne sont pas correctement enregistrées dans l''historique des transactions. Certaines transactions disparaissent de l''historique après quelques jours.',
    N'Correction d''un bug dans le module de gestion des transactions qui causait la suppression incorrecte de certaines transactions. Mise à jour de l''application pour s''assurer que toutes les transactions sont correctement enregistrées et conservées.',
    1),

    -- Ticket 7 (Planificateur d'Entraînement 2.0 Android)
    (35, '2023-06-10', '2023-06-20',
    N'L''application ne parvient pas à se connecter aux services de localisation pour suivre les parcours d''entraînement en extérieur. Les utilisateurs reçoivent un message d''erreur indiquant "Impossible de se connecter aux services de localisation".',
    N'Mise à jour de l''application pour inclure les permissions nécessaires pour accéder aux services de localisation sur les appareils Android. Correction d''un bug dans le module de suivi de localisation.',
    1),

    -- Ticket 8 (Planificateur d'Anxiété sociale 1.1 Windows)
    (42, '2023-07-15', '2023-07-25',
    N'Les utilisateurs signalent que l''application se ferme de manière inattendue lors de la tentative de création d''un nouvel événement. Aucun message d''erreur n''est affiché.',
    N'Correction d''un bug dans le module de création d''événements qui causait un plantage de l''application. Mise à jour de l''application pour gérer correctement les erreurs lors de la création d''événements.',
    1),

    -- Ticket 9 (Trader en Herbe 1.3 MacOS)
    (12, '2023-08-01', '2023-08-10',
    N'Les utilisateurs signalent que les graphiques de performance des actions ne se mettent pas à jour en temps réel. Les données affichées sont souvent obsolètes de plusieurs minutes.',
    N'Mise à jour du module de gestion des graphiques pour s''assurer que les données sont récupérées et affichées en temps réel. Correction d''un bug qui causait un retard dans la mise à jour des graphiques.',
    1),

    -- Ticket 10 (Maître des Investissements 2.1 Windows)
    (22, '2023-09-05', '2023-09-15',
    N'Les utilisateurs signalent que l''application se bloque lors de la tentative de consultation de l''historique des transactions. L''application devient non réactive et doit être redémarrée.',
    N'Correction d''un bug dans le module de gestion de l''historique des transactions qui causait un blocage de l''application. Mise à jour de l''application pour gérer correctement les erreurs lors de la consultation de l''historique des transactions.',
    1),

    -- Ticket 11 (Planificateur d'Entraînement 1.0 Linux)
    (25, '2023-10-10', '2023-10-20',
    N'Les utilisateurs signalent que l''application ne parvient pas à synchroniser les données avec le serveur. Les données d''entraînement ne sont pas sauvegardées et les utilisateurs reçoivent un message d''erreur indiquant "Échec de la synchronisation".',
    N'Correction d''un bug dans le module de synchronisation qui causait un échec de la connexion au serveur. Mise à jour de l''application pour s''assurer que les données sont correctement synchronisées et sauvegardées.',
    1),

    -- Ticket 12 (Planificateur d'Anxiété sociale 1.0 Android)
    (39, '2023-11-15', '2023-11-25',
    N'Les utilisateurs signalent que les notifications de rappel ne fonctionnent pas. Les rappels programmés n''apparaissent pas à l''heure prévue.',
    N'Correction d''un problème dans le système de notifications de l''application. Mise à jour du code pour s''assurer que les rappels sont correctement programmés et affichés.',
    1),

    -- Ticket 13 (Trader en Herbe 1.1 MacOS)
    (4, '2023-12-20', '2023-12-30',
    N'Les utilisateurs signalent que les transactions ne sont pas correctement enregistrées dans l''historique des transactions. Certaines transactions disparaissent de l''historique après quelques jours.',
    N'Correction d''un bug dans le module de gestion des transactions qui causait la suppression incorrecte de certaines transactions. Mise à jour de l''application pour s''assurer que toutes les transactions sont correctement enregistrées et conservées.',
    1),

    -- Ticket 14 (Maître des Investissements 2.0 iOS)
    (20, '2024-01-05', '2024-01-15',
    N'Les utilisateurs signalent que l''application refuse de démarrer sur les appareils iOS 14 et versions ultérieures. L''écran de démarrage apparaît pendant quelques secondes puis l''application se ferme sans message d''erreur.',
    N'Identification d''une incompatibilité avec la nouvelle politique de gestion des permissions d''iOS 14. Mise à jour du manifeste de l''application pour inclure les nouvelles déclarations de permissions requises.',
    1),

    -- Ticket 15 (Planificateur d'Entraînement 1.1 Windows Mobile)
    (32, '2024-02-10', NULL,
    N'L''application se bloque fréquemment lors de la consultation des graphiques de performance des actions. L''utilisateur doit redémarrer l''application pour continuer à l''utiliser.',
    NULL,
    2),

    -- Ticket 16 (Planificateur d'Anxiété sociale 1.1 MacOS)
    (41, '2024-03-15', '2024-03-25',
    N'Les utilisateurs signalent que les notifications de rappel ne fonctionnent pas. Les rappels programmés n''apparaissent pas à l''heure prévue.',
    N'Correction d''un problème dans le système de notifications de l''application. Mise à jour du code pour s''assurer que les rappels sont correctement programmés et affichés.',
    1),

    -- Ticket 17 (Trader en Herbe 1.2 Android)
    (9, '2024-04-01', '2024-04-10',
    N'Les utilisateurs signalent que les transactions ne sont pas correctement enregistrées dans l''historique des transactions. Certaines transactions disparaissent de l''historique après quelques jours.',
    N'Correction d''un bug dans le module de gestion des transactions qui causait la suppression incorrecte de certaines transactions. Mise à jour de l''application pour s''assurer que toutes les transactions sont correctement enregistrées et conservées.',
    1),

    -- Ticket 18 (Maître des Investissements 1.0 iOS)
    (17, '2024-05-05', NULL,
    N'Les utilisateurs signalent que l''application refuse de démarrer sur les appareils iOS 14 et versions ultérieures. L''écran de démarrage apparaît pendant quelques secondes puis l''application se ferme sans message d''erreur.',
    NULL,
    2),

    -- Ticket 19 (Planificateur d'Entraînement 2.0 iOS)
    (36, '2024-06-10', '2024-06-20',
    N'L''application ne parvient pas à se connecter aux services de localisation pour suivre les parcours d''entraînement en extérieur. Les utilisateurs reçoivent un message d''erreur indiquant "Impossible de se connecter aux services de localisation".',
    N'Mise à jour de l''application pour inclure les permissions nécessaires pour accéder aux services de localisation sur les appareils iOS. Correction d''un bug dans le module de suivi de localisation.',
    1),

    -- Ticket 20 (Planificateur d'Anxiété sociale 1.0 Windows)
    (38, '2024-07-15', '2024-07-25',
    N'Les utilisateurs signalent que l''application se ferme de manière inattendue lors de la tentative de création d''un nouvel événement. Aucun message d''erreur n''est affiché.',
    N'Correction d''un bug dans le module de création d''événements qui causait un plantage de l''application. Mise à jour de l''application pour gérer correctement les erreurs lors de la création d''événements.',
    1),

    -- Ticket 21 (Trader en Herbe 1.3 iOS)
    (15, '2024-08-01', NULL,
    N'Les utilisateurs signalent que les graphiques de performance des actions ne se mettent pas à jour en temps réel. Les données affichées sont souvent obsolètes de plusieurs minutes.',
    NULL,
    2),

    -- Ticket 22 (Maître des Investissements 2.1 MacOS)
    (21, '2024-09-05', NULL,
    N'Les utilisateurs signalent que l''application se bloque lors de la tentative de consultation de l''historique des transactions. L''application devient non réactive et doit être redémarrée.',
    NULL,
    2),

    -- Ticket 23 (Planificateur d'Entraînement 1.0 MacOS)
    (26, '2024-10-10', '2024-10-20',
    N'Les utilisateurs signalent que l''application ne parvient pas à synchroniser les données avec le serveur. Les données d''entraînement ne sont pas sauvegardées et les utilisateurs reçoivent un message d''erreur indiquant "Échec de la synchronisation".',
    N'Correction d''un bug dans le module de synchronisation qui causait un échec de la connexion au serveur. Mise à jour de l''application pour s''assurer que les données sont correctement synchronisées et sauvegardées.',
    1),

    -- Ticket 24 (Planificateur d'Anxiété sociale 1.0 iOS)
    (40, '2024-11-15', NULL,
    N'Les utilisateurs signalent que les notifications de rappel ne fonctionnent pas. Les rappels programmés n''apparaissent pas à l''heure prévue.',
    NULL,
    2),

    -- Ticket 25 (Trader en Herbe 1.1 Windows)
    (5, '2024-12-20', '2024-12-30',
    N'Les utilisateurs signalent que les transactions ne sont pas correctement enregistrées dans l''historique des transactions. Certaines transactions disparaissent de l''historique après quelques jours.',
    N'Correction d''un bug dans le module de gestion des transactions qui causait la suppression incorrecte de certaines transactions. Mise à jour de l''application pour s''assurer que toutes les transactions sont correctement enregistrées et conservées.',
    1)
;