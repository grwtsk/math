# Verification target: String Defs Rightpad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c9b5e9fd401555cbce188b3a6f92198247ccbd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c9b5e9fd401555cbce188b3a6f92198247ccbd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftpad](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/leftpad.md) | 18 | `declaration-track:ca93d87e468ef319f4ed197f22f7c347ea5e89690a04abe35481ac60a4d8ec98` |
| 2 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/replicate.md) | 22 | `declaration-track:4cc7a80515f9198d3028927cda1106b5f02274717465b72fe345b373d0057cb4` |
| 3 | `def` | [rightpad](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/rightpad.md) | 30 | `declaration-track:50980e281a2201a5fdce971ae262a5c6199f485b8007d42a4397ea26aaadaf85` |
| 4 | `def` | [IsPrefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/isprefix.md) | 34 | `declaration-track:a74751b169b2d8465b2bccb945bd4b1e82855045ee3547f3e6289b64718b78d0` |
| 5 | `def` | [IsSuffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/issuffix.md) | 38 | `declaration-track:5f35d3827bacb539a0ff769de1596ff8d202229bf49c160b467c66d8baa28252` |
| 6 | `def` | [mapTokens](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/maptokens.md) | 43 | `declaration-track:7ab580578d6ac5875059e40cf30476e0e6a83eb74192e1ab77063993289a56bb` |
| 7 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/StringDefsRightpad.lean/declarations/head.md) | 47 | `declaration-track:6a180e6691d57f4a2d0eecf381ad52fb4c8ab0eca531d9f18c6c1540de96855b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37aecb770173a488d412e17d69afacba0efb49c253f36949519fe6f5ea6c8bd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
