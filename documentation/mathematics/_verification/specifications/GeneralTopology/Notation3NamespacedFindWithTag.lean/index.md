# Verification target: Notation3 Namespaced Find With Tag

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7367dcec1aec2aa0b04232682997104541e39af",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/index.md) · [Full source](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7367dcec1aec2aa0b04232682997104541e39af`.

Source path: `GRWTSK/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Notation3` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Filter](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/filter.md) | 20 | `declaration-track:7a9e35a414fab1cb292447bf1aeba8a0bc25067569c944fe77c28d919835f6d1` |
| 2 | `def` | [Filter.atTop](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/filter-attop.md) | 21 | `declaration-track:3562190ac2f11920cae3000849422b13e171503f9bee346a15f78fb3a70bd0d1` |
| 3 | `def` | [Filter.eventually](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/filter-eventually.md) | 22 | `declaration-track:22217474325e2b1b5931738180b7559832c60d089a5c2576c9469131b20415d9` |
| 4 | `def` | [findWithTag](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/findwithtag.md) | 36 | `declaration-track:79020eb67027432fd02b9d13633b1ae2005edb9db47652a0169226337c7f676c` |
| 5 | `def` | [testTagAppFns](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/testtagappfns.md) | 48 | `declaration-track:be5f1383ddb00b07006fcae26eb040923f79f9186844317d8efb3b28e5c1ef6b` |
| 6 | `def` | [foobar](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/foobar.md) | 80 | `declaration-track:a279b866bbe3c3ec94504fa2931e9a23094e8c1447e0b6b766900869b5cd87a9` |
| 7 | `def` | [func](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/func.md) | 102 | `declaration-track:237c24db5a03326f858cd948638781e07a0a783d311ccc463f0bebef8329b8c6` |
| 8 | `structure` | [MyUnit](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/myunit.md) | 107 | `declaration-track:a1845155f160c64710d2b143f073cd91d21ec9d70feea560da2de8fc4db362d6` |
| 9 | `structure` | [MyUnit'](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/myunit-source-edition-2.md) | 114 | `declaration-track:ac5a96891046e5c0155cef3a7b0488fee33c3e8135d3ea0f61b3c11212d1fe20` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/instance.md) | 115 | `declaration-track:8e4dabac8163fc1ccc7405c1dd0270f1d7463986335010c1ba3304ded07ad36e` |
| 11 | `def` | [foo](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/foo-source-edition-2.md) | 126 | `declaration-track:5b2fd07012b47378037d9841893f9abf0aee05760e2dec228fb602521664b971` |
| 12 | `def` | [bar](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/bar.md) | 127 | `declaration-track:4189165b4214405d855487b658a406088b5c64237f27d431d18360392e85f6f9` |
| 13 | `def` | [foo'](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/foo.md) | 135 | `declaration-track:257c896b35fb1439df973f3f750c2258d987c259ba0b1cc2622bbaf09cf35222` |
| 14 | `def` | [bar'](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/bar-source-edition-2.md) | 136 | `declaration-track:55f39b535887fe2b922fc48e6962e09301a565d964809e3b05bed8b77895a905` |
| 15 | `def` | [myId](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/myid.md) | 149 | `declaration-track:48e1aaa4486fed135a964efd572ff0191914cf442951f5958f8f693c61f01a31` |
| 16 | `def` | [idStr](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/idstr.md) | 175 | `declaration-track:ea4d0a482278102df11807c0258a18c8730bffe3a79b9f1bf284e7ec9a889ac3` |
| 17 | `example` | [(anonymous)](../../../../GeneralTopology/Notation3NamespacedFindWithTag.lean/declarations/example.md) | 211 | `declaration-track:a8b645be7612342de7b51e4edf42b721d1691f5fe42d763a263b0b4535a6888e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78ef76b365195c0d793b8363729a414387e379c0252db1f5e4f4015ff5791803 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
