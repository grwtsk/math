# Verification target: Classical Eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Abelian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.SkewAdjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SymplecticGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matrix_trace_commutator_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/matrix-trace-commutator-zero.md) | 86 | `result-track:d2962668d3c46aa902555c9ad0edced0624385b89254ab18804056067c617777` |
| 2 | `def` | [sl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/sl.md) | 97 | `declaration-track:ba71727344f74fb05b494f5f4819ec549e4a7034f4201eba6aca741189db32ed` |
| 3 | `theorem` | [sl_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/sl-bracket.md) | 102 | `result-track:e6d24842829630edd0bce0e7177251383c797cb9dabdec59a2bdbe6ce2efae37` |
| 4 | `def` | [Eb](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/eb.md) | 112 | `declaration-track:5b1b643b0043eb4f2cd325d475e8258e5d3ae6d7143fc1b09267c8bcc2e6357b` |
| 5 | `theorem` | [eb_val](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/eb-val.md) | 119 | `result-track:c6c011e1220f458493ee951e9e8efd7b4f2e5a33c75b4c768114bf766e88b039` |
| 6 | `theorem` | [sl_non_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/sl-non-abelian.md) | 125 | `result-track:645f531153539186f37b42717a76b080ae33248d064f43e82a0975a32797b289` |
| 7 | `def` | [sp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/sp.md) | 142 | `declaration-track:a19d430cb5f87ef96c949f3e89976465abecb1784dac98565ffab54973466ad8` |
| 8 | `def` | [so](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/so-source-edition-2.md) | 152 | `declaration-track:463b3fe8cf6e6ab85bd9f0d7c631c252a92a44bb67e57ce2bf271c727e084fc6` |
| 9 | `theorem` | [mem_so](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/mem-so.md) | 157 | `result-track:2c1700954abb7cf57d4bbb5456845eceb26b891fad95103c7ea839a884de7fcf` |
| 10 | `def` | [indefiniteDiagonal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/indefinitediagonal.md) | 163 | `declaration-track:80ccb15f990e7bf4554153937ed009fa51c8f9b12e7f5a9208046f1d8d4b6e6a` |
| 11 | `def` | [so'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/so.md) | 169 | `declaration-track:2ead3fdc85687f1387c58275462b4e6975334ec34a4b62ca56565267022bc2b0` |
| 12 | `def` | [Pso](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pso.md) | 175 | `declaration-track:443b99ce1c900a045c2edd3e3a24084f3a05ca7d5f9c96c78c730af5942d7108` |
| 13 | `theorem` | [pso_inv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pso-inv.md) | 181 | `result-track:e7183c5b8c83200c53716def63f2639f7889000fcac91833e92628d31af566d1` |
| 14 | `def` | [invertiblePso](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/invertiblepso.md) | 196 | `declaration-track:141280ab682c9691c4efa7f025bb87fbe3de36a90dd2cb07273f3e4d549f08b1` |
| 15 | `theorem` | [indefiniteDiagonal_transform](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/indefinitediagonal-transform.md) | 200 | `result-track:11c5d0198f98023337661254cd7770c1a4af1925de849f758810fed819afe0e7` |
| 16 | `def` | [soIndefiniteEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/soindefiniteequiv.md) | 217 | `declaration-track:40b42ea5e0706311f36ec84488a56a103742fda9a8dc39bcee4c1a4d0e6726d6` |
| 17 | `theorem` | [soIndefiniteEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/soindefiniteequiv-apply.md) | 225 | `result-track:edd54b36a6a8ff7192b204d892f95ddc9affb10619a1d9b0a90cf1c9a9c834cd` |
| 18 | `def` | [JD](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/jd.md) | 239 | `declaration-track:65ddc3882914f678a77a5c6cd1fe6f328178b30a4c96b3e5eabffd50c8278449` |
| 19 | `def` | [typeD](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/typed.md) | 245 | `declaration-track:081cf6deef714321ec085ec8a8850debd75fd44330eeb6304623c5a6f95b0638` |
| 20 | `def` | [PD](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pd.md) | 257 | `declaration-track:692669e6522beabd7031eaaaaee9e54e2b33800b42a004a74ae4a55eadf0a590` |
| 21 | `def` | [S](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/s.md) | 262 | `declaration-track:a634e87b76efc93a5396303b49b0e38d3cf433953640d507cd4c7131d33e7393` |
| 22 | `theorem` | [s_as_blocks](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/s-as-blocks.md) | 266 | `result-track:c62e4faad5be429d8a682608f417786b0cf7170c9da560293e7f0dcf5f35ba07` |
| 23 | `theorem` | [jd_transform](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/jd-transform.md) | 271 | `result-track:83686856e65ebe09e83785944aa62a2eaaa088a4718cfa5d320fc163a603fd3c` |
| 24 | `theorem` | [pd_inv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pd-inv.md) | 279 | `result-track:8e91f55dbb3673d096bc48fb59258e54e0b3f43e5d272115ad140e190854d834` |
| 25 | `instance` | [invertiblePD](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/invertiblepd.md) | 285 | `declaration-track:dd76cd6dc9a9c1ae7ff67b0cd5955fef8e74136d26a000f32fad0ed8b1b09e1b` |
| 26 | `def` | [typeDEquivSo'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/typedequivso.md) | 290 | `declaration-track:74617c2b07edba47ed4158459520c35e0541e0c9710815d447f2f42ab5bacbf4` |
| 27 | `def` | [JB](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/jb.md) | 313 | `declaration-track:67da65320ae8e48f33a5eab39a5f9650aca4f97108fbaa7fb97561da10d535b8` |
| 28 | `def` | [typeB](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/typeb.md) | 319 | `declaration-track:f5206a1e43ae5e4288ff10254552c15f0532085b4147f8753d16417dcfa92a84` |
| 29 | `def` | [PB](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pb.md) | 338 | `declaration-track:e7949c1375d127cc4ebefc7924dec739b9fcdbc450520e871ffa9485ebfe55db` |
| 30 | `theorem` | [pb_inv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/pb-inv.md) | 344 | `result-track:12c91ec57b8d057f8fb3385e8b72b486096d1e8ee03f156eaba000dd3b287a17` |
| 31 | `instance` | [invertiblePB](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/invertiblepb.md) | 350 | `declaration-track:c71a6523f801f0183c2ddee9ab62c674052c490d0ffb8310721e4b5900a901ca` |
| 32 | `theorem` | [jb_transform](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/jb-transform.md) | 354 | `result-track:95bc29c3c7f0ee1a9ae7e44fce1b552e5747e9151367df5077574938a42277f7` |
| 33 | `theorem` | [indefiniteDiagonal_assoc](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/indefinitediagonal-assoc.md) | 359 | `result-track:aea1280301ca46bad6172c0058c1716e7d93ef4c7502630d5b44411b9b00b582` |
| 34 | `def` | [typeBEquivSo'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ClassicalEb.lean/declarations/typebequivso.md) | 375 | `declaration-track:52eeb752e14b16b67c3411040e397fbcf45ca55fed2d8c20b7347c355e924611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e7b2f5ef5d003b53f2cdee4a8a018a0e92db5a7799534d1c1d0f280693d8bc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
