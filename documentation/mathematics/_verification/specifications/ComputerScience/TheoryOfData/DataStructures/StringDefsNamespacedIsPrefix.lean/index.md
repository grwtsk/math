# Verification target: String Defs Namespaced Is Prefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4714a1b17162a6f068a38943fca38200700d1e3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant61697383a97e2a3253c702ea9741906bc6ab8870a8c4997a143bbbcfde5f8bb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4714a1b17162a6f068a38943fca38200700d1e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant61697383a97e2a3253c702ea9741906bc6ab8870a8c4997a143bbbcfde5f8bb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant61697383a97e2a3253c702ea9741906bc6ab8870a8c4997a143bbbcfde5f8bb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Rename` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftpad](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/leftpad.md) | 35 | `declaration-track:79c34e5f6320beb5c2785ef3e4f87512378f3a823d1f9cf87932058589986cf2` |
| 2 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/replicate.md) | 39 | `declaration-track:4f219d8b85ee2873b5b69a7399e4cab1ac5d986b03472b667e9ac68959bf4896` |
| 3 | `def` | [isPrefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/isprefix.md) | 43 | `declaration-track:b33b6f65f9e0083d2a3e735bf5d452457e8206e5a59dab4d0619d92c7f4e3268` |
| 4 | `def` | [isSuffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/issuffix.md) | 47 | `declaration-track:3e80409b2517d01b4542a72576801ac3cba68539978b24b668ba52f2f2152176` |
| 5 | `def` | [mapTokens](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/maptokens.md) | 52 | `declaration-track:f8386351a6db0c281e87c2beecbbe8e1135273f1d1b85903621921060fa365e8` |
| 6 | `def` | [getRest](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/getrest.md) | 58 | `declaration-track:87de2de7fe11fa5fdc8748f35ed7c204038272207ca16896abbf8fa8d763d2d3` |
| 7 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsNamespacedIsPrefix.lean/declarations/head.md) | 65 | `declaration-track:4ce522123aed7e40ca93b4c846cbf5b7e991441b36ff7d63fbf55a5cb21304c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d646cc3351beb8a40eb32e1c6c61e4040fd337ca1dec39b460c42f59a231aec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant61697383a97e2a3253c702ea9741906bc6ab8870a8c4997a143bbbcfde5f8bb7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant61697383a97e2a3253c702ea9741906bc6ab8870a8c4997a143bbbcfde5f8bb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
