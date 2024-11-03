#!/system/bin/sh

G='\e[01;32m'
R='\e[01;31m'
Y='\e[01;33m'
B='\e[01;34m'
V='\e[01;35m'
Bl='\e[01;30m'
C='\e[01;36m'
W='\e[01;37m'
N='\e[00;37;40m'

eg(){
    echo -e "${G} >> $1 ${G}"
}

er(){
    echo -e "${R} >> $1 ${R}"
}
ev(){
    echo -e "${V} >> $1 ${V}"
}
ec(){
    echo -e "${C} >> $1 ${C}"
}

ocg_main() {
    banner() {
        clear
        echo ""
        echo -e "${C}============ O C G  H E R L A N ============${C}"
        echo -e "${C}"
        echo -e "${C}          BACKUP WAPES SMALL ${C}"
        echo -e "${C}          POWERED BY OCG        ${C}"
        echo -e "${C}"

        echo -e "${C}===========================================${C}"
    }
    banner
    eg "PROSES."
    harini=$(date '+%Y%m%d')
    foldb="/sdcard/OCG/WAPES/$harini/com.whatsapp"
    mkdir -p $foldb
    mkdir -p /data/HERLAN/
    export TMPDIR=/data/HERLAN

    datano=$(cat "/data/data/com.whatsapp/shared_prefs/com.whatsapp_preferences_light.xml" 2> /dev/null) 
                
                
    nomor=$(sed -n -e 's/.*<string name="ph">\(.*\)<\/string>.*/\1/p' <<< $datano)

    
    if [[ ! -e /data/data/com.whatsapp/files/me ]]; then
        er "Kayaknya Ada Yang Salah Deh Sama Orang Ini"
        er "WB Belum Ada Akun."
        er "Kok Bisa Bisanya Pengen Di Backup.."
        er "Wkwkwkwkwkw"
        sleep 2
    else
        nama="ocg-wp-$(date '+%Y%m%d-%H%M%S')-NO62$nomor.tar.gz"
        folna="$foldb/$nama"
        
        sleep 1
        am force-stop com.whatsapp
        eg "Nomor Akun : 62$nomor"
        eg "Menghapus file yang tidak dibutuhkan"
        sleep 0.2
        rm -r /data/data/com.whatsapp/account/ 2> /dev/null
        rm -r /data/data/com.whatsapp/app_account_switching/ 2> /dev/null
        rm -r /data/data/com.whatsapp/app_minidumps/ 2> /dev/null
        rm -r /data/data/com.whatsapp/cache/ 2> /dev/null
        rm -r /data/data/com.whatsapp/code_cache/ 2> /dev/null
        rm -r /data/data/com.whatsapp/files/decompressed/ 2> /dev/null
        rm -r /data/data/com.whatsapp/lib/ 2> /dev/null
        rm -r /data/data/com.whatsapp/lib-main/ 2> /dev/null
        rm -r /data/data/com.whatsapp/no_backup/ 2> /dev/null
        sleep 0.2
        rm -r /data/data/com.whatsapp/databases/_jobqueue-WhatsAppJobManager 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/_jobqueue-WhatsAppJobManager-journal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/daily_metrics.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/daily_metrics.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/smb* 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/daily_metrics.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/media.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/media.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/media.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/axolotl.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/axolotl.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/chatsettings.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/chatsettings.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/chatsettings.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/companion_devices.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/companion_devices.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/companion_devices.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/msgstore.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/msgstore.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/msgstore.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/payments.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/payments.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/payments.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/stickers.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/stickers.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/stickers.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/sync.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/sync.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/sync.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/wa.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/wa.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/wa.db-wal 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/location.db 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/location.db-shm 2> /dev/null
        rm -r /data/data/com.whatsapp/databases/location.db-wal 2> /dev/null
        sleep 0.2
        rm -r /data/data/com.whatsapp/files/.Shared 2> /dev/null
        rm -r /data/data/com.whatsapp/files/biz_directory 2> /dev/null
        rm -r /data/data/com.whatsapp/files/NetworkResource 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Stikers 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Whatsapp Images 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Whatsapp Video 2> /dev/null
        rm -r /data/data/com.whatsapp/files/statistics.json 2> /dev/null
        rm -r /data/data/com.whatsapp/files/*.pack 2> /dev/null
        rm -r /data/data/com.whatsapp/files/.trash 2> /dev/null
        rm -r /data/data/com.whatsapp/files/app_state 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Avatars 2> /dev/null
        rm -r /data/data/com.whatsapp/files/downloadable 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Logs 2> /dev/null
        rm -r /data/data/com.whatsapp/files/ViewOnce 2> /dev/null
        rm -r "/data/data/com.whatsapp/files/WhatsApp Images" 2> /dev/null
        rm -r "/data/data/com.whatsapp/files/WhatsApp Video" 2> /dev/null
        rm -r /data/data/com.whatsapp/files/Stickers 2> /dev/null
        rm -r /data/data/com.whatsapp/files/backup_token 2> /dev/null
        rm -r /data/data/com.whatsapp/files/cldr_strings_1688771120.pack 2> /dev/null
        rm -r /data/data/com.whatsapp/files/invalid_numbers 2> /dev/null
        rm -r /data/data/com.whatsapp/files/network_statistics.json 2> /dev/null
        rm -r /data/data/com.whatsapp/files/statistics 2> /dev/null
        rm -r /data/data/com.whatsapp/files/wam.wam 2> /dev/null
        rm -r /data/data/com.whatsapp/files/wamprivatestats.wam 2> /dev/null
        rm -r /data/data/com.whatsapp/files/wamrealtime.wam 2> /dev/null
        rm -r /data/data/com.whatsapp/files/ShorcutInfoCompatSaver_share_targets 2> /dev/null
        rm -r /data/data/com.whatsapp/files/login_failed 2> /dev/null
        rm -r /data/data/com.whatsapp/files/*.wam 2> /dev/null
        rm -r /data/data/com.whatsapp/files/vname_cert 2> /dev/null
        rm -r /data/data/com.whatsapp/files/smb_critical_store 2> /dev/null
        rm -rf /data/data/com.whatsapp/files/user_notice 2> /dev/null
        rm -rf /data/data/com.whatsapp/files/msgstore.db* 2> /dev/null
        rm -rf /data/data/com.whatsapp/files/ExoPlayerCacheDir 2> /dev/null
        rm -r /data/data/com.whatsapp/files/privacy_disclosure 2> /dev/null
        rm -r /data/data/com.whatsapp/files/ShortcutInfoCompatSaver_share_targets 2> /dev/null
        sleep 0.5
        rm -r /data/data/com.whatsapp/shared_prefs/_has_set_default_values.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/ab-prechatd-props.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/ab-props.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/block_reasons_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/com.google.android.gms.appid.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/com.whatsapp_payment_preferences.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/hybrid_payment_methods_used.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/media_daily_usage_preferences_v1.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/payment_daily_usage_preferences.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/payment_handle_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/qr_code_daily_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/qr_code_txn_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/syncd_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/triggered_block_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/triggered_block_prefs_purge_ts.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/voip_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/vpa_daily_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/vpa_payment_handle_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/vpa_txn_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/network_resources_pref.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/dropped_wam_events.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/companion_mode_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/contact_sync_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/core_health_event_pref_file.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/critical_event_client_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/disappearing_mode_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/field-stats-events-sampling.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/google_bug_154855417.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/migration_export.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/notice_store.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/ntp-scheduler.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/privacy_highlight.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/privatestats_props.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/time_spent_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/user_notice_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/privacy_disclosure_store.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/ab-props-backup.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/route_selector_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/time_spent_logging_prefs.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/server_prop_preferences.xml 2> /dev/null
        rm -r /data/data/com.whatsapp/shared_prefs/tos_gating_prefs.xml 2> /dev/null
        
        eg "Selesai menghapus file yang tidak dibutuhkan"
        sleep 1
        eg "Mengcompress ke tar.gz"

        tar -zcf $folna /data/data/com.whatsapp  > /dev/null
        eg "Done compress tar.gz"
        er "Nama File : $nama"
        er "Nama Folder : $foldb"
        er "Total Backup Hari Ini : $(ls $foldb | wc -l)"
        eg "Menghapus Data WB"
        pm clear com.whatsapp
        eg "Done."
        ec "Sukses."
        sleep 1
        
    fi
}

time ocg_main
pm clear com.whatsapp
sleep 2
pm clear com.whatsapp.w4b
sleep 0.2
am start --user 0 -n com.whatsapp/com.whatsapp.registration.VerifyCaptcha > /dev/null
am force-stop os.tools.scriptmanager 2> /dev/null
am force-stop jackpal.androidterm  2> /dev/null
