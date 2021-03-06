{ stdenv
, mkRosPackage
, robonomics_comm-nightly
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "digital_passport_agent";
  version = "0.2.0";

  src = ./.;

  propagatedBuildInputs = [
    robonomics_comm-nightly
    python3Packages.pinatapy
    python3Packages.sentry-sdk
  ];

  meta = with stdenv.lib; {
    description = "Issues a digital passport based on objective data";
    homepage = http://github.com/vourhey/digital_passport_agent;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
