# Verification target: GRWTSK.Topology.Quotient.Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12c70fe54e4d3d2d537f76fa351b902a68c96d0f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/index.md) · [Full source](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12c70fe54e4d3d2d537f76fa351b902a68c96d0f`.

Source path: `GRWTSK/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/mkql--c0f9ab23b165decf462b5f89.md) | 45 | `declaration-track:c0f9ab23b165decf462b5f89c1e675e93bf54fff3a233824a066237e4e9d8368` |
| 2 | `theorem` | [toLinearMap_mkQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/tolinearmap-mkql--553977990f861e4c96a60e13.md) | 50 | `result-track:553977990f861e4c96a60e138dcd6da9e367fb8751cc519a6711c0408567d732` |
| 3 | `theorem` | [coe_mkQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/coe-mkql--2eabba5f6840859e326c416e.md) | 53 | `result-track:2eabba5f6840859e326c416eb2f4e4ceec9e2dd58a7778a9f032b68a32c923fa` |
| 4 | `theorem` | [mkQL_apply](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/mkql-apply--cd96116e7f9c60afc74b8fdd.md) | 55 | `result-track:cd96116e7f9c60afc74b8fdd29f63d8110c8f8dbeebd808de30c55ed9845c61d` |
| 5 | `theorem` | [isQuotientMap_mkQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/isquotientmap-mkql--e7870e78bd6af28a2601e615.md) | 57 | `result-track:e7870e78bd6af28a2601e6155a98cf4232a0a484ae6b2638b555cbea24f240d0` |
| 6 | `theorem` | [isOpenQuotientMap_mkQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/isopenquotientmap-mkql--1c36838975c4dbe454aebdf3.md) | 59 | `result-track:1c36838975c4dbe454aebdf3517d86e07dfc1b3ceea6db6b80948b54571c0344` |
| 7 | `def` | [liftQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/liftql--9a5747162621658daf29d74d.md) | 63 | `declaration-track:9a5747162621658daf29d74d828ac3f4648009d6fbc02becf80e193cbc22e22e` |
| 8 | `theorem` | [toLinearMap_liftQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/tolinearmap-liftql--4ffec894e7fc95774de9ac68.md) | 68 | `result-track:4ffec894e7fc95774de9ac68307b71629c2fc94be64a36edac1c0b7a920d992e` |
| 9 | `theorem` | [coe_liftQL](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/coe-liftql--88dd215c3edeb1c5d8343db3.md) | 72 | `result-track:88dd215c3edeb1c5d8343db331b4f3820ff66e7ef704ba3602287ff434a56bd6` |
| 10 | `theorem` | [liftQL_apply](../../../../mathematics/Topology/Quotient/Variantf347936ab01c22964a012995e57c96e894244d732d21abae459f877673801d31.lean/declarations/liftql-apply--7c9eb386205da325b0708e6b.md) | 76 | `result-track:7c9eb386205da325b0708e6b9413bf091f52dcb056bb16da69917ddbb4a4efbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
