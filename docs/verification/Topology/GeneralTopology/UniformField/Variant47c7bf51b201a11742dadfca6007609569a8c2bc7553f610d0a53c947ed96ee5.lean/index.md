# Verification target: GRWTSK.Topology.GeneralTopology.UniformField.Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3de8c5ded7ae89dcef962ec224ac824d38b166a5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3de8c5ded7ae89dcef962ec224ac824d38b166a5`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/completabletopfield--538561af1c700198607c3191.md) | 53 | `declaration-track:538561af1c700198607c3191039dd6ae36279798542db56da5dd4f769176376a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/instance--8a774be205d1e1bfdd8ead01.md) | 60 | `declaration-track:8a774be205d1e1bfdd8ead01eeddb3347cc3ecac41268ac30e369400458c9a3a` |
| 3 | `def` | [hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/hatinv--dc8717af9a9f9f16a81c200c.md) | 66 | `declaration-track:dc8717af9a9f9f16a81c200c907cecf2910bc315ca11a0aea0a6fcb49884b33c` |
| 4 | `theorem` | [continuous_hatInv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/continuous-hatinv--eb5cc4f9e8b1585035e1a30e.md) | 70 | `result-track:eb5cc4f9e8b1585035e1a30e55bab5f3823b85fa65b779a1f7dabbc5a253f099` |
| 5 | `instance` | [instInvCompletion](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/instinvcompletion--f9cfbf5edb7400e5d64a93d7.md) | 99 | `declaration-track:f9cfbf5edb7400e5d64a93d7614c57053179c51f382decda07f0ea4a7f56065c` |
| 6 | `theorem` | [hatInv_extends](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/hatinv-extends--a59a2ca5f7cbec13d52ea320.md) | 104 | `result-track:a59a2ca5f7cbec13d52ea32062ecc484eb9b2b4860e9e534dbc7fece4431b0f8` |
| 7 | `theorem` | [coe_inv](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/coe-inv--61869041ec74ba87a0f4a8c8.md) | 110 | `result-track:61869041ec74ba87a0f4a8c87b043171f65aaf1b662c128f7d8d3bcb3b1701d1` |
| 8 | `theorem` | [mul_hatInv_cancel](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/mul-hatinv-cancel--45f54dfd7a68d4f2a80b2745.md) | 123 | `result-track:45f54dfd7a68d4f2a80b27455f137b399a6c7f27d683192a10b2044bb62fe1b0` |
| 9 | `instance` | [instField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/instfield--2e34e38cde50b703c1be92f4.md) | 148 | `declaration-track:2e34e38cde50b703c1be92f4615de0664e84aa16318816ef45974c2097698227` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/instance--87e9fd65132fbf903f1de008.md) | 157 | `declaration-track:87e9fd65132fbf903f1de008544caefc194c71c1357598fbbd169c6621b9d403` |
| 11 | `instance` | [Subfield.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/subfield-completabletopfield--29ae9a3a1f038e87f5b5fefe.md) | 176 | `declaration-track:29ae9a3a1f038e87f5b5fefefc4cec3e49b44b32e8674a9e7913b20cce379fe6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/instance--d4e7ba624d57c7c2e32754f2.md) | 185 | `declaration-track:d4e7ba624d57c7c2e32754f2e4a0efb9f4b1e942124b93ae098c19061f28ed34` |
| 13 | `theorem` | [IsUniformInducing.completableTopField](../../../../../mathematics/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/declarations/isuniforminducing-completabletopfield--e76cf457baa368297e3058c2.md) | 204 | `result-track:e76cf457baa368297e3058c2825e963ee65757f312a78cc04e30a3ad12f0c710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
