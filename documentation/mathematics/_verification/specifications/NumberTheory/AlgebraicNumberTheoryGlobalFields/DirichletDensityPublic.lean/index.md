# Verification target: Dirichlet Density Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72a3159c170207bd01e093f015bfe6ff2c193d22",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72a3159c170207bd01e093f015bfe6ff2c193d22`.

Source path: `GRWTSK/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIdealZetaSum](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/primeidealzetasum.md) | 54 | `declaration-track:3b27057c706d1b3dec6a84a380797456e65cce0936d1cfecbe77f59cbb142d57` |
| 2 | `theorem` | [primeIdealZetaSum_def](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/primeidealzetasum-def.md) | 57 | `result-track:79dd375e64fc9cc09f0f3153204dda89e2fc3e12e9e6eb00708237301d7722ca` |
| 3 | `theorem` | [primeIdealZetaSum_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/primeidealzetasum-nonneg.md) | 60 | `result-track:73a0658e7220df8eef3942b88266c36e7459578cda4077558a2f1b945acbd1dc` |
| 4 | `theorem` | [primeIdealZetaSum_le_card_of_finite](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/primeidealzetasum-le-card-of-finite.md) | 68 | `result-track:27e122842bdadc81f163734d2ce95f483ab3aac8c47407105a065783ce6330ad` |
| 5 | `def` | [HasDirichletDensity](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/hasdirichletdensity.md) | 82 | `declaration-track:07e13b9a505138a6878e30d0ac22122317d0dc1bae0c1f2c23999762aa20e924` |
| 6 | `def` | [dirichletDensity](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/dirichletdensity.md) | 90 | `declaration-track:1dcd22b645ac677cc7fb4afda14fc948a23f8b3980f90048569bc768721de3ca` |
| 7 | `theorem` | [dirichletDensity_eq_zero_of_not_hasDirichletDensity](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/dirichletdensity-eq-zero-of-not-hasdirichletdensity.md) | 96 | `result-track:8beb3457fa96950c994f39297c6e9a1c043645f44bdb820893821d80681ef3e9` |
| 8 | `theorem` | [HasDirichletDensity.dirichletDensity_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/hasdirichletdensity-dirichletdensity-eq.md) | 101 | `result-track:f6ad8ba68bc7fd3ab0c9f738ac6488ab2da95e2e4471dc3a558557e152f67dbb` |
| 9 | `theorem` | [hasDirichletDensity_empty](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/hasdirichletdensity-empty.md) | 106 | `result-track:fddfaf79e5699ba5a719ef638f2956ad1ce53d48b182596a15285eebbdd3ff94` |
| 10 | `theorem` | [dirichletDensity_empty](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/dirichletdensity-empty.md) | 112 | `result-track:22864fcf1cbbf3f63fc7a530d9b955a012af5dd325bd56bced509b375c2d4dd8` |
| 11 | `theorem` | [HasDirichletDensity.nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/hasdirichletdensity-nonneg.md) | 117 | `result-track:9cc905eb0fac141ad6778634b1011cb587a5447d0c4a6245697192c5bc91d85d` |
| 12 | `theorem` | [dirichletDensity_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/dirichletdensity-nonneg.md) | 124 | `result-track:3f5b2d18602065008c014d35c52c750d41d19a036ef8500024428d78102f60be` |
| 13 | `theorem` | [HasDirichletDensity.le_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/hasdirichletdensity-le-one.md) | 131 | `result-track:53fe989e702f0a05c34931abc888de687829f4cce7988a2499db5e15b18fc754` |
| 14 | `theorem` | [dirichletDensity_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/DirichletDensityPublic.lean/declarations/dirichletdensity-le-one.md) | 143 | `result-track:939c2a9c45183a1984ca00e61fc7defacfda4e10d82d2325a234bf3c115b8049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d9490db43aacf31c118bb1d09f5abd3193982de423629233af4b8bdb637e37a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean","GRWTSK/_verification/specifications/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
