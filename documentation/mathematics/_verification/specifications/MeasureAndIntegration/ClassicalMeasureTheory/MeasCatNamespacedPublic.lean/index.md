# Verification target: Meas Cat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a895afb5f701707b01a63995a47757ee37b0adab",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a895afb5f701707b01a63995a47757ee37b0adab`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean.json)

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
| 1 | `structure` | [MeasCat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/meascat.md) | 51 | `declaration-track:a0a12e67e26e9d5c677c341aeb724bd5012fc74502af9c15b91c1a3f1284b988` |
| 2 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:a70ca739127c2c1fdfffbaaaf3a7740e8ade8973e05b924961d09e421826c094` |
| 3 | `theorem` | [coe_of](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/coe-of.md) | 65 | `result-track:c238d8978b082a8e47890651fbaad46fcacef5ae698509d03315220c6ba09c36` |
| 4 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:5104407bfb2fb41c841ffbe8c81246dea7f0899ea84eaae3a902450c84d70843` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/instance.md) | 74 | `declaration-track:249fe8a71bbdbd08b27d8a6aa6a6da3ffd8d069d7f43a56a40efda1d20eda87a` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 78 | `declaration-track:d5cd3e0a6b15f5e9b79d82cc5e999a28610fc43324a0896230803795aea6201b` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:7b4cb7df055a5a812846cc3d4b51c5617731447a7b36ad21f0bcef549f1c4030` |
| 8 | `def` | [Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/measure.md) | 94 | `declaration-track:5896db26d177a8562be0b5b46c6df597a765d003c3635a4069e991f1b3091953` |
| 9 | `def` | [Giry](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/giry.md) | 101 | `declaration-track:1088bdd8196afacbf7a58d4ee7e22fa0411f1aded34d6ac40bd76a5eab060a99` |
| 10 | `def` | [Integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/integral.md) | 116 | `declaration-track:2095d8a6881cd4114f9c8d8e657d4a56abd5de70243cc48c8f4c5b43bd2beca3` |
| 11 | `instance` | [TopCat.hasForgetToMeasCat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/topcat-hasforgettomeascat.md) | 127 | `declaration-track:4e6b6c226002bbe602f9650f34ccf0083eab4d120744f9706118a623828cc210` |
| 12 | `abbrev` | [Borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/borel.md) | 132 | `declaration-track:6da6903ba6f571715b0e5d879754adbc68c460a87d27da8e1e5ba93aaa44e359` |
| 13 | `def` | [MeasCat.delabOf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasCatNamespacedPublic.lean/declarations/meascat-delabof.md) | 141 | `declaration-track:11a4099d5a5e4d10a1948be2ecde39fbc1f933556ed09acffc63848179297cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60768ba041558349d5dc03ee4d07e508435b2da13b4b64082b418f785ed9315e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
