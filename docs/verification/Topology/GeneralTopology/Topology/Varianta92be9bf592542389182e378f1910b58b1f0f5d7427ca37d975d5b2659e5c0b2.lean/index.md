# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6badf738bd45f6b402b0428d7c74102a25cd04c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6badf738bd45f6b402b0428d7c74102a25cd04c`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Contractible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartialHomeomorph` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--26b95dd32313315eef02d973.md) | 27 | `declaration-track:26b95dd32313315eef02d973652cf0b31498fadb323d47500930b10c5dc0e0da` |
| 2 | `theorem` | [isOpenEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/isopenembedding-coe--5f647150faa444cb7eb1a7a2.md) | 30 | `result-track:5f647150faa444cb7eb1a7a238d809cd76121dc51777c60d4ee8bb6ebcb7e41d` |
| 3 | `theorem` | [isEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/isembedding-coe--bd2f1ca7cac5149507d63317.md) | 33 | `result-track:bd2f1ca7cac5149507d633175eb329cce0bf8fe6a11803f8c27d2d75734cce77` |
| 4 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/continuous-coe--02c60e93389468d2261373c9.md) | 39 | `result-track:02c60e93389468d2261373c996e860cded1b53d10472d063304a928f4ba9ed21` |
| 5 | `theorem` | [continuous_re](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/continuous-re--5c615b61e1f9928ce87aae39.md) | 42 | `result-track:5c615b61e1f9928ce87aae396c2b0b28b15134f14330af4a991e7d1b1059e33d` |
| 6 | `theorem` | [continuous_im](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/continuous-im--a7243d582d7a0ed8495bccb9.md) | 45 | `result-track:a7243d582d7a0ed8495bccb9a7834cb05195c94f7287721cbb009eb4e9e818d1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--537cb7a53bb7510cdd54c137.md) | 48 | `declaration-track:537cb7a53bb7510cdd54c137b5e7724fec5cae008f043daee8c2619f5ab83b96` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--22de62c5f9ff3aafdfb2e463.md) | 51 | `declaration-track:22de62c5f9ff3aafdfb2e4639638fb66cb72002b58f29eb2cf69779bef829107` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--1a2d0e73ff17b3e8ac6c58ed.md) | 53 | `declaration-track:1a2d0e73ff17b3e8ac6c58ed699389d86f475dbdea599d5161c7b8576ccbd731` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--6ec15ffaf732668b673079c1.md) | 55 | `declaration-track:6ec15ffaf732668b673079c1be902a31b764a7ab9424f91dbaca9b6c2ae159df` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--703fa6cb29b052af77322c10.md) | 58 | `declaration-track:703fa6cb29b052af77322c10d512523edfc18c463c1b5f1f6861ce938bc8d656` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--958172c70e4daf949e4576b3.md) | 60 | `declaration-track:958172c70e4daf949e4576b3a942b4acb46f67aae73c725f905323f9bea13ba3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instance--94095744eca1a3a2b2fcfdaf.md) | 67 | `declaration-track:94095744eca1a3a2b2fcfdaf3b279bc681ed0b1bc597440d3d9b0a2855e3b573` |
| 14 | `instance` | [instContinuousGLSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/instcontinuousglsmul--e8bd8192471ad3b0c63a57da.md) | 71 | `declaration-track:e8bd8192471ad3b0c63a57da454db2bf6014d694a4fca7266f8aff26a0ecf468` |
| 15 | `def` | [verticalStrip](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/verticalstrip--e60a0d960a891637ebd618ab.md) | 85 | `declaration-track:e60a0d960a891637ebd618abb85b4512a0ac85409c4b3b7658a15855767f57e9` |
| 16 | `theorem` | [mem_verticalStrip_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/mem-verticalstrip-iff--e31a1a1e221bb91f71030b70.md) | 87 | `result-track:e31a1a1e221bb91f71030b7099b523da704b8efafa7fafa1f964f5abc302000d` |
| 17 | `lemma` | [verticalStrip_mono](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/verticalstrip-mono--210226430dbd72f10d55543a.md) | 91 | `result-track:210226430dbd72f10d55543abb4000b43c93f04ba5bf2c0ea96ff118f58ca7d7` |
| 18 | `lemma` | [verticalStrip_mono_left](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/verticalstrip-mono-left--38dff8d82c3b907b44773460.md) | 97 | `result-track:38dff8d82c3b907b44773460712b79e278390aa4594e7a06ef6c249c8c5ca561` |
| 19 | `lemma` | [verticalStrip_anti_right](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/verticalstrip-anti-right--edb9affa560e31e2d10c529d.md) | 101 | `result-track:edb9affa560e31e2d10c529df0ab0143b81d7ad398ffd00b8c5a3dd2fe2a0338` |
| 20 | `lemma` | [subset_verticalStrip_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/subset-verticalstrip-of-iscompact--202e5e13ca36181e1597d098.md) | 104 | `result-track:202e5e13ca36181e1597d09873cb07bd25e78170305b8b8286401356886f9ee7` |
| 21 | `theorem` | [ModularGroup_T_zpow_mem_verticalStrip](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/modulargroup-t-zpow-mem-verticalstrip--ccedf10cdbd59203ce6ecceb.md) | 112 | `result-track:ccedf10cdbd59203ce6ecceb51009b90f9899dea6602d7f915178b26b2acd5e4` |
| 22 | `def` | [ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex--bd590f0cea734ab616df858c.md) | 134 | `declaration-track:bd590f0cea734ab616df858c0cb94229d682f376c2a3865ae1e15e667a786a0a` |
| 23 | `lemma` | [ofComplex_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex-apply--30a4a221838620481de612f9.md) | 140 | `result-track:30a4a221838620481de612f9b7e50fffcaa0e1967f6eaaeea6d728ee0dbc3b2d` |
| 24 | `lemma` | [ofComplex_apply_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex-apply-eq-ite--4bcc443c22ccc6d34e9a7961.md) | 143 | `result-track:4bcc443c22ccc6d34e9a79618d616a194b47608080fae19a381d1df58f757901` |
| 25 | `lemma` | [ofComplex_apply_of_im_pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex-apply-of-im-pos--bb036babb4be1808c09ab805.md) | 152 | `result-track:bb036babb4be1808c09ab805a3ed6ca53b05cd7ce8324d45c8e53b30d020d7d7` |
| 26 | `lemma` | [ofComplex_apply_of_im_nonpos](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex-apply-of-im-nonpos--fbc22a77f90b954b5bf0e845.md) | 156 | `result-track:fbc22a77f90b954b5bf0e845151699d19065dc72a85c9f8394eff06dd0c29aeb` |
| 27 | `lemma` | [ofComplex_apply_eq_of_im_nonpos](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/ofcomplex-apply-eq-of-im-nonpos--e57ffb3195360da61e2c6845.md) | 160 | `result-track:e57ffb3195360da61e2c68456eee33399495927a6bb69394e42cc848c45f2434` |
| 28 | `lemma` | [comp_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/comp-ofcomplex--abcff77924f044f3adb807f5.md) | 164 | `result-track:abcff77924f044f3adb807f5baa6e503f00eb44fce0123e360938522967dae14` |
| 29 | `lemma` | [comp_ofComplex_of_im_pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/comp-ofcomplex-of-im-pos--5714bbbb5ebec3b6f31fbbaf.md) | 167 | `result-track:5714bbbb5ebec3b6f31fbbafeb73f7d4a920076fe166ac323b59174d495ba1d2` |
| 30 | `lemma` | [comp_ofComplex_of_im_le_zero](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/comp-ofcomplex-of-im-le-zero--a21347de329452542ce2d860.md) | 170 | `result-track:a21347de329452542ce2d860818005273c704b3085d2b0fe8eb4aba3fd1a1697` |
| 31 | `lemma` | [eventuallyEq_coe_comp_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/declarations/eventuallyeq-coe-comp-ofcomplex--4bad6e0eb5079f6665fe1532.md) | 174 | `result-track:4bad6e0eb5079f6665fe1532481416306ac66cd4a5f7e7d418a1a42f6adff03c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
