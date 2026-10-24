# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Semiconj.Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e3e3f5e7311a15c60fe029a7e006df0f08c65d0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e3e3f5e7311a15c60fe029a7e006df0f08c65d0`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.CoverEntropy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsDynCoverOf.image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/isdyncoverof-image--6de6cbe5bdaf7e0f79bee164.md) | 68 | `result-track:6de6cbe5bdaf7e0f79bee164f08c3dae842f62e522172c7a5487d858de55c0bb` |
| 2 | `lemma` | [IsDynCoverOf.preimage](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/isdyncoverof-preimage--a20932d2e4f35c82da8b1309.md) | 75 | `result-track:a20932d2e4f35c82da8b1309bec201bf11feae70fba535ba5d8f2a7dae56a616` |
| 3 | `lemma` | [le_coverMincard_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/le-covermincard-image--258e2dbb830b53765b3feefc.md) | 99 | `result-track:258e2dbb830b53765b3feefcb7d00ee0bdd15c5fc0c9c21d950813e7852de3f0` |
| 4 | `lemma` | [coverMincard_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/covermincard-image-le--556cd3921dc7052e376a6401.md) | 109 | `result-track:556cd3921dc7052e376a64011d1a0cafef13a2c64b8a84738d9b9c1a3028324f` |
| 5 | `lemma` | [le_coverEntropyEntourage_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/le-coverentropyentourage-image--d2c59a0431a1b39ca20db6bd.md) | 122 | `result-track:d2c59a0431a1b39ca20db6bdd68715a03fe57ddf2ef5c0bdd3a160fd9e942015` |
| 6 | `lemma` | [le_coverEntropyInfEntourage_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/le-coverentropyinfentourage-image--f0105ca7e647fae496485ebf.md) | 127 | `result-track:f0105ca7e647fae496485ebf523b4a47a31c2dba0aa9bf408bc7c2bd16ed9396` |
| 7 | `lemma` | [coverEntropyEntourage_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyentourage-image-le--6910dd4fb2b47586185a868f.md) | 132 | `result-track:6910dd4fb2b47586185a868fabc6fe5aca1809123a2942c1c90e015ed632297a` |
| 8 | `lemma` | [coverEntropyInfEntourage_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyinfentourage-image-le--73cd8c265ca5313e3c682e25.md) | 136 | `result-track:73cd8c265ca5313e3c682e25ef4b77943833546211f3da14b01187088fb03dcf` |
| 9 | `theorem` | [coverEntropy_image_of_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropy-image-of-comap--6b75db6bc2a4074325522cc0.md) | 142 | `result-track:6b75db6bc2a4074325522cc0966249bce234e72488f1980e393cccabe377955a` |
| 10 | `theorem` | [coverEntropyInf_image_of_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyinf-image-of-comap--b6991451f303c627e98bbc70.md) | 160 | `result-track:b6991451f303c627e98bbc705bc254d440b8227e8b3cdf23d8964f2b1e9d4d96` |
| 11 | `lemma` | [coverEntropy_restrict_subset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropy-restrict-subset--99a9c40b7dc0a13eac5c41ac.md) | 178 | `result-track:99a9c40b7dc0a13eac5c41ac681b7f51e887fa623750bcc134bdd1c6119905f7` |
| 12 | `lemma` | [coverEntropyInf_restrict_subset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyinf-restrict-subset--df39eca305e5dad925165cf7.md) | 184 | `result-track:df39eca305e5dad925165cf73c85da4bbf3a6e4e7875ad44bfe00b5d082c5241` |
| 13 | `theorem` | [coverEntropy_restrict](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropy-restrict--293471b55bd0a741fc645311.md) | 192 | `result-track:293471b55bd0a741fc645311543ab45925ca078c3b584c47819c528e727103e5` |
| 14 | `theorem` | [coverEntropy_image_le_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropy-image-le-of-uniformcontinuous--4b42b7c4ff21b0cb54f2ddf7.md) | 197 | `result-track:4b42b7c4ff21b0cb54f2ddf74ac41cf9be56c66c277be00e81024af41ea0ba5c` |
| 15 | `theorem` | [coverEntropyInf_image_le_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyinf-image-le-of-uniformcontinuous--35739f3e3a417e246c54815b.md) | 205 | `result-track:35739f3e3a417e246c54815bbe7a0138919e3dce883d2f94fb11cf04a32a0fa0` |
| 16 | `lemma` | [coverEntropy_image_le_of_uniformContinuousOn_invariant](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropy-image-le-of-uniformcontinuouson-invariant--b2a05f8cb0f6b62acf2a19ce.md) | 211 | `result-track:b2a05f8cb0f6b62acf2a19ce3b93a30a386a1307606a4a0c9b64a9b5b9e0b4a3` |
| 17 | `lemma` | [coverEntropyInf_image_le_of_uniformContinuousOn_invariant](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/declarations/coverentropyinf-image-le-of-uniformcontinuouson-invariant--b64d9a5217d6fe001bb850a8.md) | 223 | `result-track:b64d9a5217d6fe001bb850a8da91d32823d651e873f9e56e20b160482ecc4570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
