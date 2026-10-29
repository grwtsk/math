# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteRegistry.Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be0b6c4c6dbacbbdf16df34795cfad96145e89f0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be0b6c4c6dbacbbdf16df34795cfad96145e89f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Version` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteRegistry](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/finiteregistry--2b7bd9fa396647d75b4dc7df.md) | 15 | `declaration-track:2b7bd9fa396647d75b4dc7df1895806ae8d7cf3396ae3d53a80a09805cbcffbe` |
| 2 | `theorem` | [find?_mem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/find-mem--e1a440f6abc3dd63a89ad924.md) | 27 | `result-track:e1a440f6abc3dd63a89ad924a76f564dc8476f43096b7ea96f7347f1d08a67e8` |
| 3 | `def` | [Contains](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/contains--afeb5cde91f66e564aca2f58.md) | 43 | `declaration-track:afeb5cde91f66e564aca2f58849b62dff46eb37e578a5304bbcf25389bf18d97` |
| 4 | `def` | [lookup](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/lookup--c0ec4b388acf838a42e14cdc.md) | 47 | `declaration-track:c0ec4b388acf838a42e14cdc76a138944d8c3771fec379ea69cbfbd7d0304461` |
| 5 | `theorem` | [key_injective_on_entries](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/key-injective-on-entries--19f2d5d8c5944a4762566099.md) | 51 | `result-track:19f2d5d8c5944a4762566099b930e8708cc27290ccd3c0df29a2927ab9e398fa` |
| 6 | `theorem` | [lookup_key](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/lookup-key--157d47fe3225d9dc05ab3bd7.md) | 61 | `result-track:157d47fe3225d9dc05ab3bd7be848bf121daab8f9e80353f1c2991bfd2cecc36` |
| 7 | `theorem` | [lookup_mem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/lookup-mem--d61009e09c66d0c1ffb34048.md) | 72 | `result-track:d61009e09c66d0c1ffb34048c163b23aa611ec062f11814a90c686901b2b84da` |
| 8 | `def` | [empty](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/empty--12dbfdc32e276bd252acc262.md) | 81 | `declaration-track:12dbfdc32e276bd252acc26210f63f92e8c991b956760c0fb82744f18be6a5b1` |
| 9 | `def` | [singleton](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean/declarations/singleton--40b22525428d9701f209c22b.md) | 87 | `declaration-track:40b22525428d9701f209c22b4aefd1c6aedb961b3e4d86e99f12d9633087b501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49a22c07ac24f9efbd256222eb574312cd771f5231e1d75e9a7b60ca4e5a8d84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteRegistry/Variant3b6eafe400796e56af2dd583e63d30c0dac56ed94cda1115f5c47dce798b9b03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
