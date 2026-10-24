# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Pi.Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d11ca41fe46e33e5ad1d2757c00837ef07b194",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d11ca41fe46e33e5ad1d2757c00837ef07b194`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace--67a9ab43cc2dca97462e8bfe.md) | 22 | `declaration-track:67a9ab43cc2dca97462e8bfe48c3c321546261d53ca45ab9690db07a2252b8f0` |
| 2 | `lemma` | [Pi.uniformSpace_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace-eq--36dc77e4bb52fffa18552f91.md) | 27 | `result-track:36dc77e4bb52fffa18552f91ffd9ac29e703ee4551ea5e1c58041fcb42e8acc6` |
| 3 | `theorem` | [Pi.uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformity--2ee49b3a0a236cc6ab365476.md) | 31 | `result-track:2ee49b3a0a236cc6ab365476ba985f322f2b00f4e3bdc9385f1ebfb71303a556` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/instance--64ad03f7131753e92cb6ec91.md) | 37 | `declaration-track:64ad03f7131753e92cb6ec91d6af667276810406551f3e6d598eb50a9d709821` |
| 5 | `theorem` | [uniformContinuous_pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/uniformcontinuous-pi--ad10a2854f82845ed3897b64.md) | 42 | `result-track:ad10a2854f82845ed3897b64329c4156a2f34166ba8cdba51246f4d02605d4a3` |
| 6 | `theorem` | [Pi.uniformContinuous_proj](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-proj--d522186cbd3d8a57090da14f.md) | 48 | `result-track:d522186cbd3d8a57090da14fddaee80700fc5e8aa2360832ad79b26895ee25b0` |
| 7 | `theorem` | [Pi.uniformContinuous_precomp'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-precomp--e133d6bb5b421d511cd45533.md) | 51 | `result-track:e133d6bb5b421d511cd45533e32f1235256246187c54320124239fa399093a0d` |
| 8 | `theorem` | [Pi.uniformContinuous_precomp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-precomp--24bd38e23201a7fd6cd0d863.md) | 55 | `result-track:24bd38e23201a7fd6cd0d8636c1f937e52fcc4723a746812078aacf0d50a4616` |
| 9 | `theorem` | [Pi.uniformContinuous_postcomp'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-postcomp--233049d4a315ba472235950d.md) | 59 | `result-track:233049d4a315ba472235950da596d53e1a798abf0978d2b375b18db9fd2a9a8e` |
| 10 | `theorem` | [Pi.uniformContinuous_postcomp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-postcomp--29befe527cace6f356710cad.md) | 64 | `result-track:29befe527cace6f356710cadd14e87c7dce1ea3d9ccce6f793e9059b5dcfe915` |
| 11 | `lemma` | [Pi.uniformSpace_comap_precomp'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace-comap-precomp--46a77f9b127ff7fe25fc13be.md) | 68 | `result-track:46a77f9b127ff7fe25fc13be371fe3bb156b958cd7434c34880c75c0d0e56e12` |
| 12 | `lemma` | [Pi.uniformSpace_comap_precomp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace-comap-precomp--5c703db3b50d274e8e601f99.md) | 73 | `result-track:5c703db3b50d274e8e601f99dada8a3869f8e34be9b043db047a7c43c18a1661` |
| 13 | `lemma` | [Pi.uniformContinuous_restrict](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformcontinuous-restrict--1cf5311ecef34f282b427599.md) | 78 | `result-track:1cf5311ecef34f282b42759934eeb45abcc594d063b44ac2e23900de3c8d86c5` |
| 14 | `lemma` | [Pi.uniformSpace_comap_restrict](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace-comap-restrict--30730c18036c247cc6f790e8.md) | 82 | `result-track:30730c18036c247cc6f790e814bd25e7cf419209e1d0b8768abaf21fef1ba193` |
| 15 | `lemma` | [cauchy_pi_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/cauchy-pi-iff--b54165909cf3be2dcd4f94e3.md) | 88 | `result-track:b54165909cf3be2dcd4f94e38e0c67edd1610cb695958cf7b84645287c2e0cf6` |
| 16 | `lemma` | [cauchy_pi_iff'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/cauchy-pi-iff--9d4c2ba7931e6b1f3fed63f0.md) | 92 | `result-track:9d4c2ba7931e6b1f3fed63f07a1c8b960f04ea70d6850b0f5530b582e0a1ae10` |
| 17 | `lemma` | [Cauchy.pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/cauchy-pi--c1d6d32b6a0dbc25c25371d5.md) | 96 | `result-track:c1d6d32b6a0dbc25c25371d532382f3e94412c23b3d9926d692c34ec59c455b5` |
| 18 | `instance` | [Pi.complete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-complete--c4bce9f3fe2531c654be8a70.md) | 101 | `declaration-track:c4bce9f3fe2531c654be8a7083903e08f2fe6f8bff8915cd50062cdeaac767bf` |
| 19 | `lemma` | [Pi.uniformSpace_comap_restrict_sUnion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/pi-uniformspace-comap-restrict-sunion--3993142a11910ec134550fd3.md) | 109 | `result-track:3993142a11910ec134550fd3b2f2fb60a206dd1ab179165dd8575f6476d4e7db` |
| 20 | `theorem` | [CompleteSpace.iInf](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean/declarations/completespace-iinf--bafbb3657a60c69c3bb85a46.md) | 116 | `result-track:bafbb3657a60c69c3bb85a466edaee2b4c75672c6b2261e8860606ae3ef0e7b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
