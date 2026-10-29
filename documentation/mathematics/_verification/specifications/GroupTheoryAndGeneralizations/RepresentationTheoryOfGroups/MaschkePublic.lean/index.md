# Verification target: Maschke Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d0474598e46c987e40eac5331bfc6c7cb8c8ecf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d0474598e46c987e40eac5331bfc6c7cb8c8ecf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean.json)

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
| 1 | `def` | [conjugate](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/conjugate.md) | 68 | `declaration-track:dc0f256d4487a87229e90dd2293b46fc8ea6d9b2d8d2b4514eec7f5d662f3883` |
| 2 | `theorem` | [conjugate_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/conjugate-apply.md) | 71 | `result-track:5abe03d10a61560390c2bd4caf6cf10626415bae3345919a6cd619ce283f03a3` |
| 3 | `theorem` | [conjugate_i](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/conjugate-i.md) | 79 | `result-track:8f0784da6311a39022bdd07d2bb249ee5d2c9a29cb1db86e7df3446a5c2ac8c6` |
| 4 | `def` | [sumOfConjugates](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/sumofconjugates.md) | 92 | `declaration-track:8dda22ac992047c9201f90be3a0e7158a4203bcde45fa4cf56f5ce0b8266bac8` |
| 5 | `lemma` | [sumOfConjugates_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/sumofconjugates-apply.md) | 95 | `result-track:bbdcd80ce1eab39631ef5cfa3f6496c3ab1ff90c06cc40c3b248daf126566833` |
| 6 | `def` | [sumOfConjugatesEquivariant](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/sumofconjugatesequivariant.md) | 100 | `declaration-track:5e8ab56e01047767ebd56c1f311206c9e0ac00ae190ea65a4889a8028234d691` |
| 7 | `theorem` | [sumOfConjugatesEquivariant_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/sumofconjugatesequivariant-apply.md) | 106 | `result-track:159b76b9ad53d1be1a3e77489f65ff43abe634b4b8aff7085c5c5797d0ce8450` |
| 8 | `def` | [equivariantProjection](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/equivariantprojection.md) | 115 | `declaration-track:f52dfc6aeadb66652cdb6354c0fba720b28b9b27881f2e60905aeb4b6a260994` |
| 9 | `theorem` | [equivariantProjection_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/equivariantprojection-apply.md) | 118 | `result-track:391e0a8dfadd9171fe6b9c70a3fc36d2d86165ffb85d262f7b41f89b81b791c6` |
| 10 | `theorem` | [equivariantProjection_condition](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/equivariantprojection-condition.md) | 123 | `result-track:35131bb14b736b9b013f809b08bf55059c422461a946f91bd01a9ca430f8acb6` |
| 11 | `theorem` | [exists_leftInverse_of_injective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/exists-leftinverse-of-injective.md) | 145 | `result-track:b1195961e1b52747a49cace94a8975fe20efd1f97a474ae05e581a660e9881fd` |
| 12 | `theorem` | [exists_isCompl](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/exists-iscompl.md) | 162 | `result-track:e8451cdbbc2722a7474750eafe7c3630af1a31b811eb186123fbefb2eb790182` |
| 13 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/instance-source-edition-2.md) | 168 | `declaration-track:3e8d4c5cea73bbe25b78106cba2f0268c2d84926dffdc6a1682eff4a8c6444c4` |
| 14 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/instance.md) | 171 | `declaration-track:29339163a7b66110d034c1d629e6310d731b471acacabcbd0ae8ed03fd23e870` |
| 15 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkePublic.lean/declarations/instance-source-edition-3.md) | 183 | `declaration-track:6ffdf576e875c95c74064637b4723295a63a4a3c54df04bff85fd2424a70e2d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1062ba1f8e502824bdffdbff5b296c17e84b996270c19a20bac9e818b5a1aa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
