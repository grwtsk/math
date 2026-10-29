# Verification target: Class Number Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28adee7e5db9dcd300c45eae7b65133c0dd3b3fb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ClassNumberFinite.lean/index.md) · [Full source](../../../../NumberTheory/ClassNumberFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28adee7e5db9dcd300c45eae7b65133c0dd3b3fb`.

Source path: `GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.AbsoluteValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../NumberTheory/ClassNumberFinite.lean/declarations/normbound.md) | 45 | `declaration-track:50bb032bb9ead87f47d5d0919efe83afe0f3fd76743708bb053b27b12c26e833` |
| 2 | `theorem` | [normBound_pos](../../../../NumberTheory/ClassNumberFinite.lean/declarations/normbound-pos.md) | 55 | `result-track:5f03b8f40f6853c6bde3996dab9332f1b9e158700e910d44612331b4b24ef0fe` |
| 3 | `theorem` | [norm_le](../../../../NumberTheory/ClassNumberFinite.lean/declarations/norm-le.md) | 72 | `result-track:bc71e6b676d06605a4c9191ce391d5ff68298c14377f71c249fcde940ed7faa8` |
| 4 | `theorem` | [norm_lt](../../../../NumberTheory/ClassNumberFinite.lean/declarations/norm-lt.md) | 86 | `result-track:a037d197f66363703d35ed8c372a75384baca377a4de5ee476113511f48fa858` |
| 5 | `theorem` | [exists_min](../../../../NumberTheory/ClassNumberFinite.lean/declarations/exists-min.md) | 113 | `result-track:095249fd84e6b7b277e6eabdfea59f52e74933d8ce1bbdcf59f73b47fd5b13b2` |
| 6 | `def` | [cardM](../../../../NumberTheory/ClassNumberFinite.lean/declarations/cardm.md) | 143 | `declaration-track:b754a0e89728aafbc244bf5ed8f35c867369a6d31c624f53c18e8a27bb78932d` |
| 7 | `def` | [distinctElems](../../../../NumberTheory/ClassNumberFinite.lean/declarations/distinctelems.md) | 149 | `declaration-track:86583597193f10b29ce59c0f2581276c0900975ecb5e237106d844036a2befd3` |
| 8 | `def` | [finsetApprox](../../../../NumberTheory/ClassNumberFinite.lean/declarations/finsetapprox.md) | 156 | `declaration-track:67dcc4388ba09ab438729e0e8efd582c1145cea9f05559915ccd5cc24e05b3f9` |
| 9 | `theorem` | [finsetApprox.zero_notMem](../../../../NumberTheory/ClassNumberFinite.lean/declarations/finsetapprox-zero-notmem.md) | 160 | `result-track:08022a1338ab6f2b6facfa0478e8ff62f9665c31d09654372e4a3938b343c2ff` |
| 10 | `theorem` | [mem_finsetApprox](../../../../NumberTheory/ClassNumberFinite.lean/declarations/mem-finsetapprox.md) | 166 | `result-track:7141a356d9424afd11f79de6d8a01935402910ccdef99c07ed6ece75a44f2d7f` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../NumberTheory/ClassNumberFinite.lean/declarations/exists-mem-finsetapprox.md) | 187 | `result-track:5b5e64bc8777ad0ffdb1a87a4bbfbb6ea6df3858635abd0ceafb3419ae36ca11` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../NumberTheory/ClassNumberFinite.lean/declarations/exists-mem-finset-approx.md) | 239 | `result-track:0ac5e344bb14a45723dafaefb6bb8678edf565e52ecc7ded8b4066bdc690e4f2` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../NumberTheory/ClassNumberFinite.lean/declarations/prod-finsetapprox-ne-zero.md) | 257 | `result-track:3f14e34db2560fcd142289a55dc45a1357b03fd3d0ded873ebddfac07b025ec2` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../NumberTheory/ClassNumberFinite.lean/declarations/ne-bot-of-prod-finsetapprox-mem.md) | 263 | `result-track:326785da1588e02ead98f7aaa7cb3f3b8f1ccee26e49c2802d5c889412192798` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../NumberTheory/ClassNumberFinite.lean/declarations/exists-mk0-eq-mk0.md) | 269 | `result-track:8aa39be8cc5a6abdbe64d01d8ca0b3ea778e9e60268d90e4a2a4a92cab19cf9c` |
| 16 | `def` | [mkMMem](../../../../NumberTheory/ClassNumberFinite.lean/declarations/mkmmem.md) | 306 | `declaration-track:6722f12aac90c39f146add754f94e6419b8641c274a496337b3e4ca2174afe0b` |
| 17 | `theorem` | [mkMMem_surjective](../../../../NumberTheory/ClassNumberFinite.lean/declarations/mkmmem-surjective.md) | 311 | `result-track:d10c93b5bacff30ce28b5e94bf58737ede7844fb92fb86cc65aa86d2d31abdba` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../NumberTheory/ClassNumberFinite.lean/declarations/fintypeofadmissibleofalgebraic.md) | 325 | `declaration-track:027d9c23fca1c49340d5a69f296cd03c2deaffe9c9dfc35c85d492ab9a1f1303` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../NumberTheory/ClassNumberFinite.lean/declarations/fintypeofadmissibleoffinite.md) | 346 | `declaration-track:99b07f6d420be002853b05badb382ac1a864f0ccec04780b8245cb16344dd602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2f719bdbad46ba92dac866752a50e007f72e35cfdc9c28bbc314448a2c601c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean","GRWTSK/_verification/specifications/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
