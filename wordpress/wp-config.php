<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'testwordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '%g9V;yF7geL0ikbnNB$&#J,~>mYIq,RY|QK.=X|OKzi8AL%6]dCdT8cE52gcQeF*' );
define( 'SECURE_AUTH_KEY',  '.=gl#nrb0A{z1sHORg4U}Gb!kb2X#;!<1#2U=BNTW#OyPn897Yd%_}!VP6lDKbo/' );
define( 'LOGGED_IN_KEY',    '+.<_n zbh6;3iRW[HI~Zk^=8.3Bksj;OK*?zsiLO~BIZ15hK*T%Od<.R$_XlM#;g' );
define( 'NONCE_KEY',        'N!4e|j*0$~/4Sh&hb;zV)X-bTXo!EGz6)$,cc%I]yt&}7ncY#I&5doPEz~SVon,1' );
define( 'AUTH_SALT',        '|@n2%0!Pkan?YcL%~~[i0K_jxTqEww{(z.%Q.EbIk!J6NO;Da}_1QAg(@Io=P4) ' );
define( 'SECURE_AUTH_SALT', '@Vei02|}7Wv/,.2L2G=^(2h2)l!_hnhYA/C`sKyVDN9/~<zPlD%p&>^:(*Sll(XA' );
define( 'LOGGED_IN_SALT',   ')6rC/)xZ7_3Ce3SYatlDX8n;mQVwO P}r9;9KruV xRUA/Bl-hUy!O$~US-=;5T$' );
define( 'NONCE_SALT',       'YHZtiw9o)}X9}?>rz8YC:|oRcJq9[56r*o^&8?fgNU*cp (znx4v76D$F3)qM~Y:' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
