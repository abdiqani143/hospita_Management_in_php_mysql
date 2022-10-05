<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit4d965e9f548bf86c6e52f7d2c0b02517
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInit4d965e9f548bf86c6e52f7d2c0b02517', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit4d965e9f548bf86c6e52f7d2c0b02517', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit4d965e9f548bf86c6e52f7d2c0b02517::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
