# Verification target: Pi Complete Space

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

[Module and every result](../../../../GeneralTopology/PiCompleteSpace.lean/index.md) · [Full source](../../../../GeneralTopology/PiCompleteSpace.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.uniformSpace](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace.md) | 22 | `declaration-track:67a9ab43cc2dca97462e8bfe48c3c321546261d53ca45ab9690db07a2252b8f0` |
| 2 | `lemma` | [Pi.uniformSpace_eq](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace-eq.md) | 27 | `result-track:36dc77e4bb52fffa18552f91ffd9ac29e703ee4551ea5e1c58041fcb42e8acc6` |
| 3 | `theorem` | [Pi.uniformity](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformity.md) | 31 | `result-track:2ee49b3a0a236cc6ab365476ba985f322f2b00f4e3bdc9385f1ebfb71303a556` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/instance.md) | 37 | `declaration-track:64ad03f7131753e92cb6ec91d6af667276810406551f3e6d598eb50a9d709821` |
| 5 | `theorem` | [uniformContinuous_pi](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/uniformcontinuous-pi.md) | 42 | `result-track:ad10a2854f82845ed3897b64329c4156a2f34166ba8cdba51246f4d02605d4a3` |
| 6 | `theorem` | [Pi.uniformContinuous_proj](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-proj.md) | 48 | `result-track:d522186cbd3d8a57090da14fddaee80700fc5e8aa2360832ad79b26895ee25b0` |
| 7 | `theorem` | [Pi.uniformContinuous_precomp'](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-precomp-source-edition-2.md) | 51 | `result-track:e133d6bb5b421d511cd45533e32f1235256246187c54320124239fa399093a0d` |
| 8 | `theorem` | [Pi.uniformContinuous_precomp](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-precomp.md) | 55 | `result-track:24bd38e23201a7fd6cd0d8636c1f937e52fcc4723a746812078aacf0d50a4616` |
| 9 | `theorem` | [Pi.uniformContinuous_postcomp'](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-postcomp.md) | 59 | `result-track:233049d4a315ba472235950da596d53e1a798abf0978d2b375b18db9fd2a9a8e` |
| 10 | `theorem` | [Pi.uniformContinuous_postcomp](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-postcomp-source-edition-2.md) | 64 | `result-track:29befe527cace6f356710cadd14e87c7dce1ea3d9ccce6f793e9059b5dcfe915` |
| 11 | `lemma` | [Pi.uniformSpace_comap_precomp'](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace-comap-precomp.md) | 68 | `result-track:46a77f9b127ff7fe25fc13be371fe3bb156b958cd7434c34880c75c0d0e56e12` |
| 12 | `lemma` | [Pi.uniformSpace_comap_precomp](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace-comap-precomp-source-edition-2.md) | 73 | `result-track:5c703db3b50d274e8e601f99dada8a3869f8e34be9b043db047a7c43c18a1661` |
| 13 | `lemma` | [Pi.uniformContinuous_restrict](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformcontinuous-restrict.md) | 78 | `result-track:1cf5311ecef34f282b42759934eeb45abcc594d063b44ac2e23900de3c8d86c5` |
| 14 | `lemma` | [Pi.uniformSpace_comap_restrict](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace-comap-restrict.md) | 82 | `result-track:30730c18036c247cc6f790e814bd25e7cf419209e1d0b8768abaf21fef1ba193` |
| 15 | `lemma` | [cauchy_pi_iff](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/cauchy-pi-iff-source-edition-2.md) | 88 | `result-track:b54165909cf3be2dcd4f94e38e0c67edd1610cb695958cf7b84645287c2e0cf6` |
| 16 | `lemma` | [cauchy_pi_iff'](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/cauchy-pi-iff.md) | 92 | `result-track:9d4c2ba7931e6b1f3fed63f07a1c8b960f04ea70d6850b0f5530b582e0a1ae10` |
| 17 | `lemma` | [Cauchy.pi](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/cauchy-pi.md) | 96 | `result-track:c1d6d32b6a0dbc25c25371d532382f3e94412c23b3d9926d692c34ec59c455b5` |
| 18 | `instance` | [Pi.complete](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-complete.md) | 101 | `declaration-track:c4bce9f3fe2531c654be8a7083903e08f2fe6f8bff8915cd50062cdeaac767bf` |
| 19 | `lemma` | [Pi.uniformSpace_comap_restrict_sUnion](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/pi-uniformspace-comap-restrict-sunion.md) | 109 | `result-track:3993142a11910ec134550fd3b2f2fb60a206dd1ab179165dd8575f6476d4e7db` |
| 20 | `theorem` | [CompleteSpace.iInf](../../../../GeneralTopology/PiCompleteSpace.lean/declarations/completespace-iinf.md) | 116 | `result-track:bafbb3657a60c69c3bb85a466edaee2b4c75672c6b2261e8860606ae3ef0e7b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db1ad2867c132a36fecace119333194bf56363231929c31006c4388b7d20432 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Pi/Variantd886c755b35be4100f7984d59719affd0ad963a6b45f54b035abe469419058bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
