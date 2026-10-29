# Verification target: GRWTSK.Topology.Algebra.PrimeSpectrumPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48049847be325f603c92bf7feead13eeff55b6ff",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Algebra/PrimeSpectrumPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48049847be325f603c92bf7feead13eeff55b6ff`.

Source path: `GRWTSK/Topology/Algebra/PrimeSpectrumPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Algebra/PrimeSpectrumPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Certified`](../../../../GeneralTopology/Certified.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommRingObject](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/commringobject.md) | 11 | `declaration-track:9ac298a5fc453e996c3192414c358d3d09c2e953808a5efe7369492f0f083093` |
| 2 | `def` | [system](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/system.md) | 21 | `declaration-track:f5f2b07dda026ea19c69aab7737f9f02a19d9dd242b889f497c906e5b12385a5` |
| 3 | `theorem` | [map_apply](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/map-apply.md) | 37 | `result-track:5032f2d7aeae34e51a3915a0ae2753729478a3d44419d0ba38bdca91181151ea` |
| 4 | `theorem` | [comp_eq](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/comp-eq.md) | 44 | `result-track:dcc8cb23b71b5660672cad0141dc57105f002fd4a3151df1bebd063c66960421` |
| 5 | `def` | [continuousCertificate](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/continuouscertificate.md) | 50 | `declaration-track:66066d518d30a2041f029982a0916e88d4f787bb2a7ac54eaf939411e86b3616` |
| 6 | `def` | [continuousProperty](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/continuousproperty.md) | 56 | `declaration-track:f47c6c1702f828762e24e7e7792fdc5e34b40c2c7555b68e608ae5f16b2c568c` |
| 7 | `theorem` | [map_comp_apply](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/map-comp-apply.md) | 61 | `result-track:68b6689d8969abb0a62d2d947b6e89e6129ebf683ba9336c7aca0bbd161ea81f` |
| 8 | `def` | [integers](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/integers.md) | 70 | `declaration-track:faddf4a81f1eb01c1f777d53c9d015c9f73e80954f0f6946700036dd2cc67872` |
| 9 | `def` | [rationals](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/rationals.md) | 71 | `declaration-track:f938e7d4da45c4db2e770ba35951fc8923c701a2413667f979979e30f3638c5e` |
| 10 | `def` | [complex](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/complex.md) | 72 | `declaration-track:6726462a70e6f7f7a609e49cf92679f4623f8157838d717abb7f8bed82f134f8` |
| 11 | `def` | [complexToRational](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/complextorational.md) | 75 | `declaration-track:2f188b6e6fe68687dea1dab57af1479741f237b570266b58933404d7b7e2d2c4` |
| 12 | `def` | [rationalToInteger](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/rationaltointeger.md) | 79 | `declaration-track:1ad7339631f7746d652d63b8d50924068403ecffd5690d0876155b8db60a7222` |
| 13 | `def` | [arithmeticTowerPath](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/arithmetictowerpath.md) | 83 | `declaration-track:72fe16e282c70cdb7b49e84de7ee2805551fbef03075947fb506f3e9aba65736` |
| 14 | `theorem` | [arithmeticTower_continuous](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/arithmetictower-continuous.md) | 91 | `result-track:f8b9e2fcfed3ffebac48761bb5d0003aa7a30cf24ea386b5f011fe10cd8f7326` |
| 15 | `theorem` | [arithmeticTower_composite](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/arithmetictower-composite.md) | 97 | `result-track:28c8db2db3f967c36768ce051c9b56ff7778d8121c410d4073274bbab0e3ef7c` |
| 16 | `theorem` | [arithmeticTower_map](../../../../CommutativeAlgebra/PrimeSpectrumPort.lean/declarations/arithmetictower-map.md) | 104 | `result-track:3d472141003037840caebf32bf4f0063083dc7b60ab1b97ae3fb3ab50c99bc2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2933d0e0196bc89af479a9b77060c69f9aafc5c45519f1c7309827ebf185a0d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Algebra/PrimeSpectrumPort.lean","GRWTSK/_verification/specifications/Topology/Algebra/PrimeSpectrumPort.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
