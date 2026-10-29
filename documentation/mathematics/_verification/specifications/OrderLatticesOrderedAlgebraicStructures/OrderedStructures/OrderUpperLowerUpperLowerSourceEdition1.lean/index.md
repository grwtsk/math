# Verification target: Order Upper Lower Upper Lower Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22f74da6dfe1497de59987ffa672d7549c19db44",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variant41bc0117344f1ec0c8d45bd2e3b08766551bce730a778b81eef6f8f58194ac41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22f74da6dfe1497de59987ffa672d7549c19db44`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variant41bc0117344f1ec0c8d45bd2e3b08766551bce730a778b81eef6f8f58194ac41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UpperLower/Variant41bc0117344f1ec0c8d45bd2e3b08766551bce730a778b81eef6f8f58194ac41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.smul_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-smul-subset.md) | 29 | `result-track:8fbd28773aaf70778c47420a01902b6a09d4242e628722f22498c549db9f3c5c` |
| 2 | `theorem` | [IsLowerSet.smul_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-smul-subset.md) | 33 | `result-track:c4ea0ef7e36e3326a5076caf80028a587a0c830de2de53342bf8e67affd8967c` |
| 3 | `theorem` | [IsUpperSet.smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-smul.md) | 43 | `result-track:a77f4c840cabeeecf9638fb02afae2166798e858b5322927425ee4df1edd0ec2` |
| 4 | `theorem` | [IsLowerSet.smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-smul.md) | 46 | `result-track:4e0654bb7a4cd35befd0305e0fe88d26d001d4537eb8b753510f39aa70394667` |
| 5 | `theorem` | [Set.OrdConnected.smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/set-ordconnected-smul.md) | 49 | `result-track:7b19ca658217f4df78bb2d01d37c2121113206db4ed45f5640f5023e4c22d8e0` |
| 6 | `theorem` | [IsUpperSet.mul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-mul-left.md) | 54 | `result-track:37727d8bc811e120044f9aeb70b143554bd866d5d8224a809aec2fe2cb50a817` |
| 7 | `theorem` | [IsUpperSet.mul_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-mul-right.md) | 59 | `result-track:cdd568d36f43fd60bf3be70202b4e6c8584fe3f7a351572914ae258c49ddff62` |
| 8 | `theorem` | [IsLowerSet.mul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-mul-left.md) | 64 | `result-track:ac418285d21c61e3fd56fcbcddcb13ff839d7761d00600b1561ed037f1728282` |
| 9 | `theorem` | [IsLowerSet.mul_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-mul-right.md) | 67 | `result-track:7afef846e57e2f4f706d97003c539844d50898fea68895732d06132411df2c6c` |
| 10 | `theorem` | [IsUpperSet.inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-inv.md) | 70 | `result-track:6bd373f437757edd28790e254a76c83aba9847c90e048a66113e11b56f09b991` |
| 11 | `theorem` | [IsLowerSet.inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-inv.md) | 73 | `result-track:66f7b332f1e96379040fbdc829f21fd631a521b1d291ffb5b50b0233220ed7c8` |
| 12 | `theorem` | [IsUpperSet.div_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-div-left.md) | 76 | `result-track:701a7117bd5481b6ff31c80f043ec1314215b611ac67fc0a76d8478af32ea55e` |
| 13 | `theorem` | [IsUpperSet.div_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/isupperset-div-right.md) | 81 | `result-track:7e0ccad4e5069b7ea835248f2310c03b7f8969f7a3dfb32e045c275663b21cae` |
| 14 | `theorem` | [IsLowerSet.div_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-div-left.md) | 86 | `result-track:cecb3b6b6a1e45d8e76dd7be68efac382cc813539df4fcd94c6dd4bf6199fba7` |
| 15 | `theorem` | [IsLowerSet.div_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/islowerset-div-right.md) | 89 | `result-track:7d50083de041f4086aaee7aa002731c7540fc983b2fe74da208a23fae5e425f0` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:6ac5cdde3427df31e40637e5edd769899e44d749e8a769f795b31a167770b64f` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-7.md) | 98 | `declaration-track:80152d8f76acc24e7ea2b642dcef74d0eaa2e1d5d0c01c247a655b7ec841542f` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-12.md) | 102 | `declaration-track:e9bdab0d287d30a9d7658242ae7980bfb445ca0190ae645985848356ea9aab63` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-9.md) | 106 | `declaration-track:a8b1736d6c802477142dfe9ad8f47f24c2fe85e17421fc1e95dbfcae3406a68b` |
| 20 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/coe-one.md) | 111 | `result-track:ed96b8c673a020b5ca8cb0b1497fadd20a75b086b7116a9de4bf437b67ea8372` |
| 21 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/coe-mul.md) | 115 | `result-track:02efa14e8f1fecd0bec7661e1ff54db861b8be6578a0480d630a1897c16cc455` |
| 22 | `theorem` | [coe_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/coe-div.md) | 119 | `result-track:022f316b7e59de475e4c5407db173f44726e81a1dc0f8d57ffc4a78e1886c299` |
| 23 | `theorem` | [Ici_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/ici-one.md) | 124 | `result-track:47a3a3aebd5f5bf95d02428156f32038d39ac95858292e018135e563f38891fe` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-11.md) | 128 | `declaration-track:e937b17182a3e486ef0b6737c6972ad91cb6c0c544fd4cecf669a684f5715118` |
| 25 | `instance` | [commSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/commsemigroup.md) | 132 | `declaration-track:26b53fcf63a525cbb9a22e2a63615d1a97ac3430e2f6d2f802b1942e155af69e` |
| 26 | `theorem` | [one_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/one-mul-source-edition-2.md) | 136 | `result-track:c343452a13457d3cf4bf1778009f5c31bbafa5cd7f0ee9443184ab3186b2f519` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-10.md) | 143 | `declaration-track:b96a5bc99b1ba91da1d1d9ffcc53d86bf0115b60a41838797e6f2409ca311d3f` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance.md) | 156 | `declaration-track:166e3146ec3635ca50721e3bc03b434777686fc4c0dddf28b7d2433c786e9514` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-8.md) | 160 | `declaration-track:a4121fcdab8373d41d513d2b8e3968fcec39f56f9b9cec0f22c804c5b263eb7b` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-4.md) | 164 | `declaration-track:6d6cbe5031f6f6226b06965656c5f68417bc44e94ab62ff096fe86408e0d3b88` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-5.md) | 168 | `declaration-track:720e82326805dcbdcbe3cde51a9bcd2d79641894a5a60df67ceb108c05c56d74` |
| 32 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/coe-mul-source-edition-2.md) | 172 | `result-track:c2bfbc63d96486e5939617cb5455189a51f347e21bbc667f447aa6f6a8811388` |
| 33 | `theorem` | [coe_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/coe-div-source-edition-2.md) | 176 | `result-track:7c569042e602da2bb5d3c3818ba1ba8676b94f69d46a4ebd7a03171aac96e4b3` |
| 34 | `theorem` | [Iic_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/iic-one.md) | 181 | `result-track:40a16c92a24bd5c5de12b7f4b546dae48ef63558c1eed04e057d740fdb454776` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-2.md) | 185 | `declaration-track:421f1e36bb567a01f3b3d14ff0123be69d0fe7d5728fca61fb7e597f6d8f9560` |
| 36 | `instance` | [commSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/commsemigroup-source-edition-2.md) | 189 | `declaration-track:9956f7ede5455fdf66871522e6255c1f8519ff7267ec224cb0a96a800a3072d0` |
| 37 | `theorem` | [one_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/one-mul.md) | 193 | `result-track:5987d9da51f73728339477d77f2f266bca158492e575cb2a057a510fa41f5fcb` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/instance-source-edition-6.md) | 200 | `declaration-track:747b239d9688b7499ff16e37fc03fb969e953ee3b656a724a7f4a18229916767` |
| 39 | `theorem` | [upperClosure_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/upperclosure-one.md) | 214 | `result-track:a8c91f2454218aa7e12c3036a179c40b8f055f19acb41253f21d002fd7d0e1b2` |
| 40 | `theorem` | [lowerClosure_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/lowerclosure-one.md) | 219 | `result-track:e78c8094e1dff7ccd49bc7556ee2a58606fa5cfc4965ffb49faaaa4a0d9f072f` |
| 41 | `theorem` | [upperClosure_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/upperclosure-smul.md) | 223 | `result-track:544c8236aa52956e2947dbbf4178f7a1e9f5dd51c3657205ed51d58e5e4da023` |
| 42 | `theorem` | [lowerClosure_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/lowerclosure-smul.md) | 227 | `result-track:af272c04f6e13b41717d25ca9b94472eabb3b0b388d76f72ad826de6d78b4460` |
| 43 | `theorem` | [mul_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/mul-upperclosure.md) | 231 | `result-track:6f41822a40d849ee64a740bc57c2b257865ef7563d570bde269bcf23eee47cd5` |
| 44 | `theorem` | [mul_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/mul-lowerclosure.md) | 237 | `result-track:55d4a01edff62fc777f29c74a57553183a1663a4c35035910354eb343bfb2367` |
| 45 | `theorem` | [upperClosure_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/upperclosure-mul.md) | 243 | `result-track:e1f263ac347510c5c22c34fe5d423099a2472611eb354fb3f0d26897513edf02` |
| 46 | `theorem` | [lowerClosure_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/lowerclosure-mul.md) | 248 | `result-track:eb765aa79c6eb0faf85ff4cdbd25f4e9d4ee6fccb770e53f3e4684cd63e6072d` |
| 47 | `theorem` | [upperClosure_mul_distrib](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/upperclosure-mul-distrib.md) | 253 | `result-track:ae68835529935d436730e3e5b3a73752b5002dc604cb34df2d9afd74ab594b6b` |
| 48 | `theorem` | [lowerClosure_mul_distrib](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderUpperLowerUpperLowerSourceEdition1.lean/declarations/lowerclosure-mul-distrib.md) | 258 | `result-track:eca131abdfd648f33cbcb2a23b45ea68539b2997f617d4e7861e42b037448580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad6998921e7e29318042aa2ba92654b00b3ec36cf40d5be905d975bb9b49b822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variant41bc0117344f1ec0c8d45bd2e3b08766551bce730a778b81eef6f8f58194ac41.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/UpperLower/Variant41bc0117344f1ec0c8d45bd2e3b08766551bce730a778b81eef6f8f58194ac41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
