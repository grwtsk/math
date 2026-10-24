# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Real.Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40340674d46dde433dedcf0e4442180db38f1538",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40340674d46dde433dedcf0e4442180db38f1538`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Real` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneContinuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--5882b1670e32134fd5f810df.md) | 34 | `declaration-track:5882b1670e32134fd5f810dff52e0a44577ad7fef9f95a160bcc9bd26f7a0387` |
| 2 | `theorem` | [Real.uniformContinuous_add](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/real-uniformcontinuous-add--3270573c2e932c285f185cf3.md) | 36 | `result-track:3270573c2e932c285f185cf3884de049b24ca4d064e6f41dc8b9313084712a44` |
| 3 | `theorem` | [Real.uniformContinuous_neg](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/real-uniformcontinuous-neg--a871ec003427a708dd4b13c7.md) | 43 | `result-track:a871ec003427a708dd4b13c7e5994457a40833d30a09bb35fb1567a273891332` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--9de2a8c3139a688e38bdef77.md) | 47 | `declaration-track:9de2a8c3139a688e38bdef77525c32b677e12e93bbb4cb38b147fef72312001a` |
| 5 | `theorem` | [Real.uniformContinuous_const_mul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/real-uniformcontinuous-const-mul--67d7a96622af22edf67446a9.md) | 50 | `result-track:67d7a96622af22edf67446a9ef7978f958ce95ed9e9910d7ef1f2629d6b5fbb8` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--9b46a985d05b068a38a0bc4e.md) | 55 | `declaration-track:9b46a985d05b068a38a0bc4e282b10d0eecb2d7a90a2d854e5f40136f698bde2` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--4d31775107ee227987b4ebde.md) | 56 | `declaration-track:4d31775107ee227987b4ebde540f01d5ccb88f0e7ca6a5a5fbb6ef389bc41a74` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--b51ce64098a43ce7a81c41c4.md) | 57 | `declaration-track:b51ce64098a43ce7a81c41c40b08cc7b07f9976f749c73f06394f60b4a0d032a` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--76f466e784649f6eb13fb795.md) | 61 | `declaration-track:76f466e784649f6eb13fb7957dcc9b0f56a85818c112ac3c36eb560395f6f5db` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--d6afeeb7f6a9d4398776b74d.md) | 78 | `declaration-track:d6afeeb7f6a9d4398776b74db4c6fc6bcc926a417305307f33858bc9aa65564f` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--37b7f5586b77a866b96de2db.md) | 82 | `declaration-track:37b7f5586b77a866b96de2db6e2f2f56ec9db7979dfa1f7575b0342cbae65b2c` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--25130cbca0f2f911a239c6c9.md) | 85 | `declaration-track:25130cbca0f2f911a239c6c908ee0a62de5dd3c5dd2ab919d389d62dad6798d5` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--9ce727f672632eda556fd129.md) | 89 | `declaration-track:9ce727f672632eda556fd12971766cf1551b1840d856444b2ab3bed391c86a2e` |
| 14 | `theorem` | [isEmbedding_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/isembedding-coe--2c17f8d0bade8d724a76b919.md) | 99 | `result-track:2c17f8d0bade8d724a76b91942b45482d089835fee97f22788ef75e8f6531180` |
| 15 | `theorem` | [tendsto_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/tendsto-coe--894ccc2ddf1033ae8b28d2ec.md) | 103 | `result-track:894ccc2ddf1033ae8b28d2ec9c81f1565e9d386d72f37a755fde514dfddd2343` |
| 16 | `theorem` | [isOpenEmbedding_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/isopenembedding-coe--2d5ec5c3ca0e9d1dad2e1a6d.md) | 107 | `result-track:2d5ec5c3ca0e9d1dad2e1a6d2775a96009a662ca1fe78e5fc6ce502dcfb8b46f` |
| 17 | `theorem` | [nhds_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/nhds-coe-coe--fe58c6634dc0404ffd82d90c.md) | 110 | `result-track:fe58c6634dc0404ffd82d90c26a7a558af4731272b1d155daae7d6a171f8a6f0` |
| 18 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--53c40b58c60c7358d0ec08d4.md) | 114 | `declaration-track:53c40b58c60c7358d0ec08d478b672b7acd09941a29ab60e0e3748d1370414f4` |
| 19 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Real/Variant6e27e87750103e5666eb60f5ad7200825f39aa858ccc22b448f44487e3fb9417.lean/declarations/instance--d67a2d195e2017a32988be21.md) | 123 | `declaration-track:d67a2d195e2017a32988be21b0d8260b36a46521523660bafab78689c8710032` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
