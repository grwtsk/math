# Yang Mills — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99499d8ff9039e2396893313002b5feed0c0567a` · SHA-256 `6ef731141609923b71922cdd7be4a083f444964735cf8dee880bc178f59ecaa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.YangMills.MassGapObstruction
import Folder.GrandChallenge.YangMills.EnergyRecursion

/-!
# Folder.Theorem.GrandChallenge.YangMills

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Yang-Mills branch contract facts.
Ontology: proof.grand_challenge_yang_mills
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem ym_tube_concentration_excluded_if_supplied
    (T : Folder.GrandChallenge.YangMills.TubeVolumeEstimatePackage) :
    T.excludesDegenerateTubeConcentration :=
  Folder.GrandChallenge.YangMills.ym_tube_concentration_excluded_if_supplied T

theorem ym_stickiness_if_supplied
    (S : Folder.GrandChallenge.YangMills.StickinessPrinciple) :
    S.nontrivialEnergyPersistsUnderAllowedContinuation :=
  Folder.GrandChallenge.YangMills.ym_stickiness_if_supplied S

theorem mirzakhani_volume_is_analogy_only
    (M : Folder.GrandChallenge.YangMills.MirzakhaniVolumeAnalogy) :
    M.analogyOnly :=
  Folder.GrandChallenge.YangMills.mirzakhani_volume_is_analogy_only M

theorem ym_zero_mass_obstructed_if_supplied
    (O : Folder.GrandChallenge.YangMills.MassGapObstruction) :
    O.zeroMassExcitationObstructed :=
  Folder.GrandChallenge.YangMills.ym_zero_mass_obstructed_if_supplied O

theorem positive_energy_enters_if_supplied
    (Y : Folder.GrandChallenge.YangMills.YangMillsEnergyRecursion) :
    Y.positiveEnergyEnters :=
  Folder.GrandChallenge.YangMills.positive_energy_enters_if_supplied Y

theorem zero_mass_escape_obstructed_if_supplied
    (Y : Folder.GrandChallenge.YangMills.YangMillsEnergyRecursion)
    {S : Y.program.State}
    (h : Y.zeroMassEscape S) :
    Y.program.obstruction Y.energyInvariant S :=
  Folder.GrandChallenge.YangMills.zero_mass_escape_obstructed_if_supplied Y h

theorem no_zero_mass_escape_without_obstruction
    (Y : Folder.GrandChallenge.YangMills.YangMillsEnergyRecursion)
    {S : Y.program.State}
    (hno : ¬ Y.program.obstruction Y.energyInvariant S)
    (hzero : Y.zeroMassEscape S) :
    False :=
  Folder.GrandChallenge.YangMills.no_zero_mass_escape_without_obstruction
    Y hno hzero

end GrandChallenge
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33431fd1cf0f5c6d7f6a031b3929eaf5ce31f4662d5e74cef6ae41067c28d562 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/YangMills/Variant6ef731141609923b71922cdd7be4a083f444964735cf8dee880bc178f59ecaa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
