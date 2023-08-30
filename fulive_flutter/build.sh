#
if (( $# < 2 )) 
then
    echo "usage: build.sh versionName(x.x.x,ex:1.2.1) versionCode(int,ex:121) optional( apk | bundle | anything or not set )"
    exit 0
fi

build_apk(){
    #fvm flutter build  apk --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --release
    #fvm flutter build  apk --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --release
    #cp android/app/build/outputs/apk/release/*.apk ~/release 
    #default update from web 
    fvm flutter build  apk --split-per-abi  --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --release 
    # update from google play
    #fvm flutter build  apk --split-per-abi  --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --dart-define=FROM_GOOGLE_PLAY=true --release 
    #fvm flutter build  apk --split-per-abi --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --release 
    #flutter build  apk --split-per-abi  --target-platform android-arm,android-arm64 --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2
    #flutter build  apk --target-platform android-arm,android-arm64 --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2
}
build_bundle(){
    fvm flutter build appbundle --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2 --dart-define=CONFIG_URL=http://api.gosoloer.com/config.json --dart-define=FROM_GOOGLE_PLAY=true --release 
    #flutter build appbundle --target-platform android-arm,android-arm64 --no-shrink --split-debug-info=tmp --obfuscate --build-name $1  --build-number $2
}

if [[ "_$3" == "_apk" ]]
then 
   build_apk $1 $2
elif [[ "_$3" == "_bundle" ]]
then
   build_bundle $1 $2
else
  build_apk $1 $2
  build_bundle $1 $2
fi

