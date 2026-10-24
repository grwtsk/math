# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31cc82fe9b3c960d38fe7af3a586fd9f43692d3a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31cc82fe9b3c960d38fe7af3a586fd9f43692d3a`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Analysis.Filter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ctop](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ctop--261465bc07f65fff3ec536ed.md) | 43 | `declaration-track:261465bc07f65fff3ec536ed104c11392726a31713c86dedfe1aaa70ea09e1b6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/instance--224d9f6397f95ab15c3f3577.md) | 54 | `declaration-track:224d9f6397f95ab15c3f357777981cbdbc55ecec857d0699d6d2e774584fd873` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/instance--cb8cad8dfac4581922c7db15.md) | 68 | `declaration-track:cb8cad8dfac4581922c7db152dfa2ee45737b1753db82543370e8916a01b5472` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/coe-mk--d98b2c5e75bb62e8c0e37877.md) | 72 | `result-track:d98b2c5e75bb62e8c0e378776280393f110c9ce15217fd6bdd556cf743ddebe4` |
| 5 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ofequiv--3449b3e83a76ff6613cd010d.md) | 76 | `declaration-track:3449b3e83a76ff6613cd010dc0073e3d6b730ed6e750aee7fd449d1ea4f41416` |
| 6 | `theorem` | [ofEquiv_val](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ofequiv-val--4b4c796fe1b3c95bd5efe372.md) | 87 | `result-track:4b4c796fe1b3c95bd5efe372a590521b8c50c17eece96d788c0630b68ab3740c` |
| 7 | `def` | [toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/totopsp--95a355caa9b7bb9a8a0b2a99.md) | 94 | `declaration-track:95a355caa9b7bb9a8a0b2a99d0cf05f23d4848826da99d65d996c3e531356733` |
| 8 | `theorem` | [toTopsp_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/totopsp-istopologicalbasis--42d5658e577d31db3cd2ae92.md) | 97 | `result-track:42d5658e577d31db3cd2ae92d03b4392418bd177cbad005548b15ef28ad69a0e` |
| 9 | `theorem` | [mem_nhds_toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/mem-nhds-totopsp--3943e3b0c8c00133bb1e1579.md) | 106 | `result-track:3943e3b0c8c00133bb1e1579ab971d19be724f20d4f9c0d0dccd7c3bc86b5874` |
| 10 | `structure` | [Ctop.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ctop-realizer--37a9a749a12f3776e17677bd.md) | 117 | `declaration-track:37a9a749a12f3776e17677bdc81dc40bb5c70cc4df043415d68c8c3f382aeb34` |
| 11 | `def` | [Ctop.toRealizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ctop-torealizer--c90014969fe99e9d4df8d15e.md) | 126 | `declaration-track:c90014969fe99e9d4df8d15eda172e4e8215e7c22fb14b566d8b3f1441fe63ad` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/instance--ee93c66759cbc0c908e29bbf.md) | 130 | `declaration-track:ee93c66759cbc0c908e29bbf05b77796496d6c37572785992fd215345bb4d414` |
| 13 | `theorem` | [is_basis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/is-basis--d73c997677e6bfc37f299672.md) | 135 | `result-track:d73c997677e6bfc37f299672bfb13fa433782bb1c18abecb94c4507901bb24b4` |
| 14 | `theorem` | [mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/mem-nhds--73dd55ad80b5ba511fbd4f81.md) | 140 | `result-track:73dd55ad80b5ba511fbd4f811b1f3a1b4f5a6fc3b908e98f125c28c2e7ba67b2` |
| 15 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/isopen-iff--1e0a5d50af56899cd11c2d02.md) | 145 | `result-track:1e0a5d50af56899cd11c2d021143315d404e2030f01bff7565a9d05ac75217c3` |
| 16 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/isclosed-iff--596361892fb72130c715b168.md) | 150 | `result-track:596361892fb72130c715b168e15024ae63aacce692c30f407f70a261c4752d15` |
| 17 | `theorem` | [mem_interior_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/mem-interior-iff--89401c9d71a43b5d93966512.md) | 160 | `result-track:89401c9d71a43b5d93966512513708caf0eee5d67447b1f755d469da3f61dbe5` |
| 18 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/isopen--a9a5580c947bf6bc91d36ad7.md) | 165 | `result-track:a9a5580c947bf6bc91d36ad7f08c1c30527cc8ff968a8a51bcdedb9692f25eb0` |
| 19 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ext--1e5540422058d6d4e28837ef.md) | 169 | `result-track:1e5540422058d6d4e28837ef95d04bf39954599f56e14555341e8f5c1c54e99c` |
| 20 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ext--601759317561c6a56c6104cf.md) | 176 | `result-track:601759317561c6a56c6104cf4b3aeb4bbb9934cfa5f203618792456a7b3fd295` |
| 21 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/id--29f2b0024d606e53102d1812.md) | 186 | `declaration-track:29f2b0024d606e53102d1812b1b090898fab6a2881b102f20317ef1f3da0b50a` |
| 22 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ofequiv--3fd0b07c5edcd630b2e3c847.md) | 200 | `declaration-track:3fd0b07c5edcd630b2e3c8473a71e6bd4e9fd4123f662d50d27d9f7d6633fc63` |
| 23 | `theorem` | [ofEquiv_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ofequiv--ca7ed6ace3125cac14bfd241.md) | 208 | `result-track:ca7ed6ace3125cac14bfd241627b2a8ccc56cc7da0332d1c30c1eb7e8622f461` |
| 24 | `theorem` | [ofEquiv_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/ofequiv-f--6a90ee114fec8abc2c8b6284.md) | 212 | `result-track:6a90ee114fec8abc2c8b6284fb26bb78fb8d476294e3e8ac404f1483aa968738` |
| 25 | `def` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/nhds--56472182ae95853e7e2b3da2.md) | 218 | `declaration-track:56472182ae95853e7e2b3da2ecdba9199b1ee9150e2e154661011b0eaf271b9c` |
| 26 | `theorem` | [nhds_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/nhds--901882d59dbf787bf4cc1c0c.md) | 233 | `result-track:901882d59dbf787bf4cc1c0c1004511df9fa8ba8cf93ce76491890361747b4aa` |
| 27 | `theorem` | [nhds_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/nhds-f--d078f9d87eb3b273c26828da.md) | 237 | `result-track:d078f9d87eb3b273c26828daaf7fce96b16dc6f913182d1a3d5a4c9ae8d63958` |
| 28 | `theorem` | [tendsto_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/tendsto-nhds-iff--18a31d13638ee67ad1024513.md) | 241 | `result-track:18a31d13638ee67ad10245138d9db9ef2f6ec7989ff45122dc18e3492960e11d` |
| 29 | `structure` | [LocallyFinite.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/locallyfinite-realizer--bc2abbe2dd164404ed934a3f.md) | 251 | `declaration-track:bc2abbe2dd164404ed934a3f60bf4e0d22812b9af2ad1fca840f1718c43a5284` |
| 30 | `theorem` | [LocallyFinite.Realizer.to_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/locallyfinite-realizer-to-locallyfinite--8478dbf3a22b43eb4cdcab36.md) | 256 | `result-track:8478dbf3a22b43eb4cdcab367bf1c88cb093220ce211d0ec96968f46339699d7` |
| 31 | `theorem` | [locallyFinite_iff_exists_realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/locallyfinite-iff-exists-realizer--9534eebdd33570ea289cbd19.md) | 261 | `result-track:9534eebdd33570ea289cbd19baf649bd1797825aa85f4d4b3e5aafa47d6f08c8` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/instance--7320bbdd32346d4278fedddb.md) | 277 | `declaration-track:7320bbdd32346d4278fedddb6558f8662a9930c0c0533d2638b06c1f952f50ae` |
| 33 | `def` | [Compact.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/compact-realizer--f26173af551634c58f2b2f97.md) | 283 | `declaration-track:f26173af551634c58f2b2f97b2885dc2e2a9455c39fb92089075daa10aa9000c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/declarations/instance--ea7e53affd3f9b2988b66044.md) | 287 | `declaration-track:ea7e53affd3f9b2988b66044f58fcb0be816a066d3954ef9b8d87cd864526309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
