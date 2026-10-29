# Verification target: Cached Gates Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b40c817269fc3e30176e11ad27f78de61c893d6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b40c817269fc3e30176e11ad27f78de61c893d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNotCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mknotcached.md) | 29 | `declaration-track:164402c497b3056c1fb5db0a61e579cb4875db8a74ce77bbad0ba3bfe9b3bc61` |
| 2 | `def` | [mkAndCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mkandcached.md) | 37 | `declaration-track:6530adbd59078e481bbdacc374441e9699c4efdd8f8e2b7052a13183719dda7c` |
| 3 | `def` | [mkOrCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mkorcached.md) | 43 | `declaration-track:30d76325ae12930431ee7aa65404466ff9a30f7804dc4f64d8985d7c0521182e` |
| 4 | `def` | [mkXorCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mkxorcached.md) | 54 | `declaration-track:689578fdc787ed025cc387a45dab2f00a8c4a37eef02b20a96cd371d82a94ba4` |
| 5 | `def` | [mkBEqCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mkbeqcached.md) | 70 | `declaration-track:3bd1e1ab8e755f41e24110200a1581fb9381911b18834f5897c708ea5f27101b` |
| 6 | `def` | [mkImpCached](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CachedGatesPublic.lean/declarations/mkimpcached.md) | 86 | `declaration-track:bd9a556740524052a83d93d1174eacd4812abc1d209ae56baa6772b5a38addaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dededee09fc4f7b0d58783afd5401ca3c3971bb3686d0a18bbec0c5697402007 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
