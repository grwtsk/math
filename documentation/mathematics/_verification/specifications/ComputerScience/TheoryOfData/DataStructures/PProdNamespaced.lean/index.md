# Verification target: PProd Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "055342fc6f02787ac99b2f73e2229474d0e4e00f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `055342fc6f02787ac99b2f73e2229474d0e4e00f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk.injArrow](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/mk-injarrow.md) | 27 | `declaration-track:2ad0f8de9f3d75a86762545303ba5529bdea837dbe810804b79746afe4493c7e` |
| 2 | `theorem` | [mk.eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/mk-eta.md) | 32 | `result-track:72c16b5927904b02d3c09257b6206f3fd33e3ed8c7bea2292816d57560c77534` |
| 3 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/forall.md) | 36 | `result-track:107ebef9acb9666ed548afcddfb4969cdcd290ef3cee9ec458dfb10009d317aa` |
| 4 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/exists-source-edition-2.md) | 40 | `result-track:7531d2071c8b0615b4644caa904dc40e667b7f35cc04c748b5835499854e53ee` |
| 5 | `theorem` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/forall-source-edition-2.md) | 43 | `result-track:a22e31598342e17cb02a3090ac7d94d237f9161f9cb056ee8072ef8d2a46a36c` |
| 6 | `theorem` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/exists.md) | 46 | `result-track:5631d46d9e9db29e9821c5e82f2dec64a9f4506867a7f0df45c7c7ed701ab6c4` |
| 7 | `theorem` | [Function.Injective.pprod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PProdNamespaced.lean/declarations/function-injective-pprod-map.md) | 51 | `result-track:5694a196f7e5e252c4d11a8bea2f70b632703a9571661d349e97cb763f175a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41499d5d3cf8955b9c7c16d44d98ff491b2c628ce6e2bbcca1d2195fcefc2036 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant4fd672800fe64aeba0fe0772bc9e67b32c0c1f3ba9522cfb9ff0fdafaedc6765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
