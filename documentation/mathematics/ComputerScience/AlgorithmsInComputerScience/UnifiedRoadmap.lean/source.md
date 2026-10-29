# Unified Roadmap — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce4260e760bcba73dfbe859ea327fd392c9cdf05` · SHA-256 `b355331b2ed0ab48fd87bf6c707d2c8ff79a6a5914aa71da8d672c273f8e3e03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.BSD.RankOrderCompatibility
import Folder.GrandChallenge.Hodge.GeneralizationAtlas
import Folder.GrandChallenge.NavierStokes.SmoothContinuation
import Folder.GrandChallenge.Complexity.GlitchObstruction
import Folder.GrandChallenge.RH.FixedPointTranscendencyReduction
import Folder.GrandChallenge.YangMills.MassGapObstruction

/-!
# Folder.GrandChallenge.UnifiedRoadmap

Radiation role: research-boundary
BinaryMatrix spine: This module records the grand-challenge roadmap table.
Ontology: grand_challenge_program
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: roadmap
Composite stack role: grand-challenge

Roadmap:

Branch          Static invariant              Forbidden configuration                 Status
BSD             rank/regulator/period data    rank/order mismatch                     theorem target
Hodge           Hodge class                   non-algebraic surviving Hodge class     theorem target
Navier-Stokes   regularity/energy structure   finite-time blowup                      theorem target
P vs NP         compression-growth profile    nonreconstructible certificate glitch   speculative scaffold
RH              K/crystalline trace           off-critical zero                       theorem target
Yang-Mills      gauge energy/moduli volume    zero-mass excitation                    theorem target
-/

namespace Folder
namespace GrandChallenge

structure RoadmapEntry where
  branch : ChallengeBranch
  staticInvariantLabel : String
  forbiddenConfigurationLabel : String
  status : ChallengeStatus

def unifiedRoadmap : List RoadmapEntry := [
  { branch := ChallengeBranch.bsd
    staticInvariantLabel := "rank/regulator/period data"
    forbiddenConfigurationLabel := "rank/order mismatch"
    status := ChallengeStatus.theoremTarget },
  { branch := ChallengeBranch.hodge
    staticInvariantLabel := "Hodge class"
    forbiddenConfigurationLabel := "non-algebraic surviving Hodge class"
    status := ChallengeStatus.theoremTarget },
  { branch := ChallengeBranch.navierStokes
    staticInvariantLabel := "regularity/energy structure"
    forbiddenConfigurationLabel := "finite-time blowup"
    status := ChallengeStatus.theoremTarget },
  { branch := ChallengeBranch.pVsNp
    staticInvariantLabel := "compression-growth profile"
    forbiddenConfigurationLabel := "nonreconstructible certificate glitch"
    status := ChallengeStatus.speculativeScaffold },
  { branch := ChallengeBranch.riemannHypothesis
    staticInvariantLabel := "K/crystalline trace"
    forbiddenConfigurationLabel := "off-critical zero"
    status := ChallengeStatus.theoremTarget },
  { branch := ChallengeBranch.yangMills
    staticInvariantLabel := "gauge energy/moduli volume"
    forbiddenConfigurationLabel := "zero-mass excitation"
    status := ChallengeStatus.theoremTarget }
]

theorem unified_roadmap_nonempty :
    unifiedRoadmap ≠ [] := by
  decide

end GrandChallenge
end Folder

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cecf9bc2add1b13ac150d0a70be9e40049f4c98b0b6ee61d9a05227ea0bac515 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnifiedRoadmap/Variantb355331b2ed0ab48fd87bf6c707d2c8ff79a6a5914aa71da8d672c273f8e3e03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
