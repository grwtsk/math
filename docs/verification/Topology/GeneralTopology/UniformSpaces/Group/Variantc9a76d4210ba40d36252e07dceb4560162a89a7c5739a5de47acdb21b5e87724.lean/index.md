# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Group.Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a388fffe00ac421b88935059d5300a63f90641b2",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a388fffe00ac421b88935059d5300a63f90641b2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasProd.inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-inv--b7d5fb14c5b56aec5e13506f.md) | 41 | `result-track:b7d5fb14c5b56aec5e13506f4b02aab6d33496b508b19f310f77244c05ed1ec7` |
| 2 | `theorem` | [Multipliable.inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-inv--95d0733bdb113e5f236bc69d.md) | 45 | `result-track:95d0733bdb113e5f236bc69d4dcab6483c0449835a0aa68f143829d3840a9009` |
| 3 | `theorem` | [Multipliable.of_inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-of-inv--74e8f6274185821e4d7b72f1.md) | 49 | `result-track:74e8f6274185821e4d7b72f183c3e7f70c329b83049f9c2179c44bd532784359` |
| 4 | `theorem` | [multipliable_inv_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-inv-iff--ea9ac04b143e87d5ddc8b4c3.md) | 53 | `result-track:ea9ac04b143e87d5ddc8b4c34d3ac8be606f1f409792cf93b8acd961552bd1f8` |
| 5 | `theorem` | [HasProd.div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-div--8ce0a2744badccdafc3c441b.md) | 57 | `result-track:8ce0a2744badccdafc3c441b2b45270c669ec14f80b7470d3fa45d2ee18aef6f` |
| 6 | `theorem` | [Multipliable.div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-div--35634ab32f786c657d8b2db5.md) | 63 | `result-track:35634ab32f786c657d8b2db5165bce99f02fa111e199c02a0e81a3de4543ec57` |
| 7 | `theorem` | [Multipliable.trans_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-trans-div--26339d79694711769af056f6.md) | 68 | `result-track:26339d79694711769af056f6dd09931a6c3ff379fd8bdf92dec692c1accddbe6` |
| 8 | `theorem` | [multipliable_iff_of_multipliable_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-iff-of-multipliable-div--787cd85885f64a9863fa81cf.md) | 73 | `result-track:787cd85885f64a9863fa81cfcd49e22b3a312bb34747b7f4cbdc87f335983b90` |
| 9 | `theorem` | [HasProd.update](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-update--dd27520f8ffc1903d5e496f2.md) | 78 | `result-track:dd27520f8ffc1903d5e496f2850bdb8b1eacb992cfe2fee780cafd02788ed4c8` |
| 10 | `theorem` | [Multipliable.update](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-update--a4e3b4118cb0318fd01460b5.md) | 87 | `result-track:a4e3b4118cb0318fd01460b54169f2f076ca01ac74dd065ee0cf1d3ebdcbdd22` |
| 11 | `theorem` | [HasProd.hasProd_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-hasprod-compl-iff--d1a4d5bcd5f4bfe79bf70778.md) | 92 | `result-track:d1a4d5bcd5f4bfe79bf70778f2469f40dd98cde3b96edab951e21626674b6b13` |
| 12 | `theorem` | [HasProd.hasProd_iff_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-hasprod-iff-compl--e50bfc5ff70d301c881aad33.md) | 100 | `result-track:e50bfc5ff70d301c881aad33266ef8f21e51fd4a7cff927111b30e64be881057` |
| 13 | `theorem` | [Multipliable.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-multipliable-compl-iff--bff58fd5dab0bb8688f61271.md) | 105 | `result-track:bff58fd5dab0bb8688f61271ed0ea3a195ba036c79d0cdbf78f73477cceeb8c9` |
| 14 | `theorem` | [Finset.hasProd_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/finset-hasprod-compl-iff--d2ea3624bf0efca7680abd5b.md) | 111 | `result-track:d2ea3624bf0efca7680abd5bfe328693a4e644b47865b17956dd010daadee146` |
| 15 | `theorem` | [Finset.hasProd_iff_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/finset-hasprod-iff-compl--a366ac42cd753277911abb23.md) | 116 | `result-track:a366ac42cd753277911abb23ec381546e337df408f96d7a2082426575f206fe1` |
| 16 | `theorem` | [Finset.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/finset-multipliable-compl-iff--074214fdf3b8c239ee99e29c.md) | 121 | `result-track:074214fdf3b8c239ee99e29cdd558e6def584b78bf5cee44fca17e35560ad6aa` |
| 17 | `theorem` | [Set.Finite.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/set-finite-multipliable-compl-iff--e43a300c781e7d97252d5fec.md) | 126 | `result-track:e43a300c781e7d97252d5fecf4c1b17c4ea3febddf57328bdf04776d00e95e6b` |
| 18 | `theorem` | [hasProd_ite_div_hasProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-ite-div-hasprod--d098696c819254739f96af4a.md) | 131 | `result-track:d098696c819254739f96af4a899d6801444de56ec2581c033f2bc7b3bc2fd22f` |
| 19 | `theorem` | [Multipliable.congr_cofinite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-congr-cofinite--661ba0399e0f23c0c8009c50.md) | 147 | `result-track:661ba0399e0f23c0c8009c50ab04b7574c546c4b9bf87560fb52838c7d866394` |
| 20 | `theorem` | [multipliable_congr_cofinite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-congr-cofinite--735e1d8860e5e14fd589a091.md) | 155 | `result-track:735e1d8860e5e14fd589a0915fcdc402bbdec935bc92978a9a39e15e150fcb48` |
| 21 | `theorem` | [Multipliable.congr_atTop](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-congr-attop--d886638e7fea278aeaa3e804.md) | 160 | `result-track:d886638e7fea278aeaa3e804e989f68a8d74da2d6786a4db97296dd0b6457990` |
| 22 | `theorem` | [multipliable_congr_atTop](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-congr-attop--b3101cd3beb9dd98528142f0.md) | 164 | `result-track:b3101cd3beb9dd98528142f0bd911815ea528cc18ae2f18889210907e2b84108` |
| 23 | `theorem` | [tprod_inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/tprod-inv--ec1448c60f69d5de4c9dc9b0.md) | 172 | `result-track:ec1448c60f69d5de4c9dc9b07306fd620b61be1db30b1cae2ad140d375ca3db4` |
| 24 | `theorem` | [Multipliable.tprod_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tprod-div--ba064d90c6b7aef419c07830.md) | 179 | `result-track:ba064d90c6b7aef419c0783055e5d4a211619fdf2b850b7f44dfc9abbb90b458` |
| 25 | `theorem` | [Multipliable.prod_mul_tprod_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-prod-mul-tprod-compl--eadb1b7d1a562afae5e8e224.md) | 188 | `result-track:eadb1b7d1a562afae5e8e2241929342ad555109e5c7cdadc79429db8a7851a11` |
| 26 | `theorem` | [Multipliable.tprod_eq_mul_tprod_ite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tprod-eq-mul-tprod-ite--682c1b8a4d0226ccf2d40286.md) | 202 | `result-track:682c1b8a4d0226ccf2d40286643b92e8e0ed2b34b8822afee349d9092683ef09` |
| 27 | `theorem` | [multipliable_iff_cauchySeq_finset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-iff-cauchyseq-finset--d30f9e72a952d9c981b4ba19.md) | 222 | `result-track:d30f9e72a952d9c981b4ba19dd8dc8a6a7ab297515b2e01777cd7d0c5e8b2cfd` |
| 28 | `theorem` | [cauchySeq_finset_iff_prod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/cauchyseq-finset-iff-prod-vanishing--94cecfe28aa6db4f749f90b1.md) | 229 | `result-track:94cecfe28aa6db4f749f90b16fcfab2aa225433857c8d5b85d437295c10045d0` |
| 29 | `theorem` | [cauchySeq_finset_iff_tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/cauchyseq-finset-iff-tprod-vanishing--700f740f53ad17c107bdf4ba.md) | 254 | `result-track:700f740f53ad17c107bdf4bad4bfffee95fa78d03ce1af8b12ae043a55249a18` |
| 30 | `theorem` | [multipliable_iff_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-iff-vanishing--bd2eeab4a3eeac3da5023a70.md) | 277 | `result-track:bd2eeab4a3eeac3da5023a70f82a1362832648ad11a4c43900115204a1098235` |
| 31 | `theorem` | [multipliable_iff_tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-iff-tprod-vanishing--c57f1917ee90311f6f017b62.md) | 283 | `result-track:c57f1917ee90311f6f017b62a371fa6832b3a020c9fff43e7061a6606e72ae36` |
| 32 | `theorem` | [Multipliable.multipliable_of_eq_one_or_self](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-multipliable-of-eq-one-or-self--80fa8ffca265b36db54c1719.md) | 289 | `result-track:80fa8ffca265b36db54c17190bc26f76a42c826d64b43a1278f794687e8ec59f` |
| 33 | `theorem` | [Multipliable.mulIndicator](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-mulindicator--caf803be90d39f006c54035d.md) | 307 | `result-track:caf803be90d39f006c54035d3f8deefef904e1267e872481647ea7412e0d7ade` |
| 34 | `theorem` | [Multipliable.comp_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-comp-injective--869a325af96d87422d660708.md) | 312 | `result-track:869a325af96d87422d660708be0fbc03e24854976fbf3db0a6385a9e165b14ae` |
| 35 | `theorem` | [Multipliable.subtype](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-subtype--cbc3ea07f6bb8ab4cbc18b00.md) | 319 | `result-track:cbc3ea07f6bb8ab4cbc18b00a751b5a185d51c43936ba22fff94d9cba6ed0217` |
| 36 | `theorem` | [multipliable_subtype_and_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-subtype-and-compl--ba7621243ae4448c0deb4474.md) | 323 | `result-track:ba7621243ae4448c0deb44746acd042918da0affcf96bfc5dc16098e168cf9ac` |
| 37 | `theorem` | [Multipliable.tprod_subtype_mul_tprod_subtype_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tprod-subtype-mul-tprod-subtype-compl--9b99804c05685152dd77516d.md) | 328 | `result-track:9b99804c05685152dd77516d336cfd4d07e84cc922fbe8e398ef70ad404e9885` |
| 38 | `theorem` | [Multipliable.prod_mul_tprod_subtype_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-prod-mul-tprod-subtype-compl--5440fb94b30d608365e8b6ce.md) | 338 | `result-track:5440fb94b30d608365e8b6cef401248960164e6ca6678729f115a54438c27601` |
| 39 | `theorem` | [Multipliable.vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-vanishing--7c66232d9695f044b8872779.md) | 357 | `result-track:7c66232d9695f044b8872779a71cbb32fe4a26947612a03bdeeb421526273466` |
| 40 | `theorem` | [Multipliable.tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tprod-vanishing--17eb78d33af7a944d3b29ba6.md) | 365 | `result-track:17eb78d33af7a944d3b29ba6d51e3913f5964f2798ee42785151b55a356cc233` |
| 41 | `theorem` | [tendsto_tprod_compl_atTop_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/tendsto-tprod-compl-attop-one--0c4a7600c9805b72c90eac4b.md) | 377 | `result-track:0c4a7600c9805b72c90eac4bd4344210ee43d2af98e7d19080144c8226ea7444` |
| 42 | `theorem` | [Multipliable.tendsto_cofinite_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tendsto-cofinite-one--ae8340cdc669cef8f84f0382.md) | 392 | `result-track:ae8340cdc669cef8f84f038215c225183e5b74bde88254292189635a614eff90` |
| 43 | `theorem` | [Multipliable.finite_mulSupport_of_discreteTopology](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-finite-mulsupport-of-discretetopology--65391e933eb0b456bfc5db9c.md) | 400 | `result-track:65391e933eb0b456bfc5db9cd9de31825a7807d5b6a6d9704a0b736c6d6cdc01` |
| 44 | `theorem` | [Multipliable.countable_mulSupport](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-countable-mulsupport--27c9a898b8194a57249adac9.md) | 407 | `result-track:27c9a898b8194a57249adac94be77c83c8d77b5602996ed4608ab7fa046fef12` |
| 45 | `theorem` | [multipliable_const_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-const-iff--8ec4a20c21e3bfda277443c8.md) | 412 | `result-track:8ec4a20c21e3bfda277443c8c423d3256d5a62d8d30d2101061d550c889d2fcb` |
| 46 | `theorem` | [tprod_const](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/tprod-const--2adc355b57b674fe458483fe.md) | 424 | `result-track:2adc355b57b674fe458483fe550542cce293b09769af6ed9bf2b547031b0cf5e` |
| 47 | `lemma` | [HasProd.congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/hasprod-congr-cofinite--a31048a15ccf83fe9defe6e0.md) | 447 | `result-track:a31048a15ccf83fe9defe6e058cc7eafb103a23aad63e036ecb6efcfb459492b` |
| 48 | `lemma` | [Multipliable.tsum_congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-tsum-congr-cofinite--50e4ea508093bd9060c0e57a.md) | 463 | `result-track:50e4ea508093bd9060c0e57ab5fba2ca8fc52a2bbdab37655018dd8a29588a27` |
| 49 | `lemma` | [Multipliable.congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/declarations/multipliable-congr-cofinite--267af565cda6bae5b839ceb0.md) | 475 | `result-track:267af565cda6bae5b839ceb05ce8105029f66c5896fb63da05a197aa14809a95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
