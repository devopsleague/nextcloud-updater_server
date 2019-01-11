Feature: Testing the update scenario of beta releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.9RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    hWPqEFWhdfrui4ZDEKWlXBerHAjuHuIsur30/Kw6tepuVGjIphT24jxh/T/gDwLx
    WDd+X1FJVAenKryJiOKePg5p3n5/P2P2t2ssytia8b4gw68T5htNbw4aE7xLO5+b
    b6wyAzf6FDD1Q6Zs9qSCaJSphh5WsJgJsYMEisSCLze+hdiKAVX05xVicu0ajU0K
    53vAnDZq61qdRhVN7q2ItSFEMeBPuRUwm4Prc7NTX57JXw2t+X39Un0K2dn+rkMM
    v4IPMwQYlFFTjkzG7MHhmBu3hBLB3ybz2FIT2af9mwtGXIlLns6uhLnneSG+Gx1E
    4RyWRCTDa57bKI/zt1WVeA==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.9RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    hWPqEFWhdfrui4ZDEKWlXBerHAjuHuIsur30/Kw6tepuVGjIphT24jxh/T/gDwLx
    WDd+X1FJVAenKryJiOKePg5p3n5/P2P2t2ssytia8b4gw68T5htNbw4aE7xLO5+b
    b6wyAzf6FDD1Q6Zs9qSCaJSphh5WsJgJsYMEisSCLze+hdiKAVX05xVicu0ajU0K
    53vAnDZq61qdRhVN7q2ItSFEMeBPuRUwm4Prc7NTX57JXw2t+X39Un0K2dn+rkMM
    v4IPMwQYlFFTjkzG7MHhmBu3hBLB3ybz2FIT2af9mwtGXIlLns6uhLnneSG+Gx1E
    4RyWRCTDa57bKI/zt1WVeA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.9RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    hWPqEFWhdfrui4ZDEKWlXBerHAjuHuIsur30/Kw6tepuVGjIphT24jxh/T/gDwLx
    WDd+X1FJVAenKryJiOKePg5p3n5/P2P2t2ssytia8b4gw68T5htNbw4aE7xLO5+b
    b6wyAzf6FDD1Q6Zs9qSCaJSphh5WsJgJsYMEisSCLze+hdiKAVX05xVicu0ajU0K
    53vAnDZq61qdRhVN7q2ItSFEMeBPuRUwm4Prc7NTX57JXw2t+X39Un0K2dn+rkMM
    v4IPMwQYlFFTjkzG7MHhmBu3hBLB3ybz2FIT2af9mwtGXIlLns6uhLnneSG+Gx1E
    4RyWRCTDa57bKI/zt1WVeA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-13.0.9RC2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    hWPqEFWhdfrui4ZDEKWlXBerHAjuHuIsur30/Kw6tepuVGjIphT24jxh/T/gDwLx
    WDd+X1FJVAenKryJiOKePg5p3n5/P2P2t2ssytia8b4gw68T5htNbw4aE7xLO5+b
    b6wyAzf6FDD1Q6Zs9qSCaJSphh5WsJgJsYMEisSCLze+hdiKAVX05xVicu0ajU0K
    53vAnDZq61qdRhVN7q2ItSFEMeBPuRUwm4Prc7NTX57JXw2t+X39Un0K2dn+rkMM
    v4IPMwQYlFFTjkzG7MHhmBu3hBLB3ybz2FIT2af9mwtGXIlLns6uhLnneSG+Gx1E
    4RyWRCTDa57bKI/zt1WVeA==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.6.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    kr8VAKHaR8aadC6UNomS/Z1g6G6p9lNdu0Jb7ASBv4JrLaUeqU7iqNIZX4NotJAc
    sZ2YbOP+SQ2QPbAVxJNEjaK+Su6EBarEt2Z9uw48+GyNdWUr1QbZLHwjXgxVqv+T
    BXQuRLdjp/s/EureazaCvTzQETvg7TIHI3T8BtuLdr3y8vhxR/6dygQZKz9rikFT
    GcieFznuMhaXbssXmntuV+NUqSZtExqVMN68HMVgBCdbniqmrLkNiOOhGW3EZYas
    AjN5hksLm/b7URzdahKrFwa2IcpAuYnqckCtveIhPK4COrhtm0lPx797WCTHNWmx
    8M2RkM0Foc7oVgFcxOo94A==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.6.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    kr8VAKHaR8aadC6UNomS/Z1g6G6p9lNdu0Jb7ASBv4JrLaUeqU7iqNIZX4NotJAc
    sZ2YbOP+SQ2QPbAVxJNEjaK+Su6EBarEt2Z9uw48+GyNdWUr1QbZLHwjXgxVqv+T
    BXQuRLdjp/s/EureazaCvTzQETvg7TIHI3T8BtuLdr3y8vhxR/6dygQZKz9rikFT
    GcieFznuMhaXbssXmntuV+NUqSZtExqVMN68HMVgBCdbniqmrLkNiOOhGW3EZYas
    AjN5hksLm/b7URzdahKrFwa2IcpAuYnqckCtveIhPK4COrhtm0lPx797WCTHNWmx
    8M2RkM0Foc7oVgFcxOo94A==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.3 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.3.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """

  Scenario: Updating an  outdated Nextcloud 15.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.2.0" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.2.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    jbMZKu/ICGvOnG44z6I3H996RJ5At4c0i6E4b/K6/imO/18XxRXnKVpUkImt46q0
    +2PjJ8CL8v/2hbhYO1kCExeQ9HWrKn9FnkkxT4K6Q+jnq42nOv/BddDMrzAlxmAu
    qCKARb652D3bfOyGx2+cSc45YxbJqQiGMm/wCnPCZLtx9RUOG5C0Lt4/vgeN8Rk2
    GaBv6cn6GE9lntP4aa3YKqt67KovHeSHYIiP7MVwe0Bwiu2n6adkDLn+WmVU/Osw
    dQWgfifeB/isVeb8koOmkK8rQ+M0FicrfHsCUqzh/oDap7lu7WdgRvNCiUbEwcIw
    GZyAWsPsboY0Qg7I2XWssA==
    """
