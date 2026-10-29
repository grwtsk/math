# Verification target: Hypercube Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "639da7e279bcf66399af1891d67ef190599d801b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant6f679e230da6eb5211fd3e19eae04ff23342dcd578dc03a57eb9edd23f8f9527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `639da7e279bcf66399af1891d67ef190599d801b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant6f679e230da6eb5211fd3e19eae04ff23342dcd578dc03a57eb9edd23f8f9527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant6f679e230da6eb5211fd3e19eae04ff23342dcd578dc03a57eb9edd23f8f9527.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-point.md) | 9 | `declaration-track:aeb0fbd3a91deb8cd120a0ad6266e0b83a450a48ed2151f3823770c39e93332d` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-function.md) | 13 | `declaration-track:d321fde383391f81ccbf03fc4f888757ac17079b656be1c6d4682598d2dbca3f` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-scalarfunction.md) | 21 | `declaration-track:08cac91ee088c42ce8aeae89d5080a0b56660020e9eccae8daabe9d68c1b3ea4` |
| 4 | `def` | [Hypercube.bxor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-bxor.md) | 25 | `declaration-track:5fdebaff89c1ff52cabc8087c60bb68ab1694d0ac1e174fd6384091c0b1cf123` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-booldiff.md) | 32 | `declaration-track:75aa9eefca5c48ab0cf9d7b797cc40dab92e7c03f24481c418901978be0ae589` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-bitatnat.md) | 36 | `declaration-track:5f55498d8c5f89efe3bf58ac40adcadfe64d02538deda5b1f76c2d4a825395a1` |
| 7 | `def` | [Hypercube.tableBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-tablebit.md) | 45 | `declaration-track:3f7520025b52d04c439d84b9f975ce5132f5f9dca4b851a7c6c2ae57a0df528b` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-pointofindex.md) | 49 | `declaration-track:2487047788f93ea05fa66e6847f8f8fe47fbb2cef74fa02f0e31fd3ab6523439` |
| 9 | `def` | [Hypercube.dropLast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-droplast.md) | 53 | `declaration-track:d3c317a7cef83fce664eb3ecc94d51612833bbc720d5807bd964d397bdcc9607` |
| 10 | `def` | [Hypercube.last](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-last.md) | 59 | `declaration-track:3fa33edf1fe464c22640243c9c526f19580f88d7c22a5d78f403804e9fc6b191` |
| 11 | `def` | [Hypercube.extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-extend.md) | 65 | `declaration-track:292c2e9254443f198d844339176d405a83ccd7c7b8d572454100a61a474b5c56` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-droplast-extend.md) | 75 | `result-track:646bb50f9599e62f440d228abcd85f36b7ece567fd7821d1110c58107b2a5815` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-last-extend.md) | 82 | `result-track:137e8046016813e494282059d591d151ce664b382658e2f01f500ec27edd4aff` |
| 14 | `def` | [Hypercube.vertices](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-vertices.md) | 91 | `declaration-track:3acf605f6e6feeb0df48cb9cf1c8745e126f04f865e5518fe11a28fea35321be` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-vertices-length.md) | 97 | `result-track:ffc5699924a9eda313f88b8fec1710520dceba2ce32a442e65d20a5bfdc3bd37` |
| 16 | `def` | [Hypercube.coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-coordinates.md) | 117 | `declaration-track:d659c505feda01a6049337eae0e8b34a9c8af06c8636f838e31f829595ee9b0e` |
| 17 | `def` | [Hypercube.spinOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-spinofbool.md) | 121 | `declaration-track:818e3330b7f2e669a3831c11f5c8e605a917189711a86d62f5ff3730cd54e38a` |
| 18 | `def` | [Hypercube.intOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-intofbool.md) | 126 | `declaration-track:87958440cfd0d24eb4b69d7c79105fe73ea5425937a852c6c37cee9753e1f525` |
| 19 | `def` | [Hypercube.spinCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-spincoordinates.md) | 131 | `declaration-track:74d95d57b1b8e3797e9d3bc944866568ff8d5a2a139c4d6bb62ec7fe5664cc43` |
| 20 | `def` | [Hypercube.zeroOneCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-zeroonecoordinates.md) | 135 | `declaration-track:cbf3ba17e4e15faed5ff41627fe4a64e5e18fe742bc63bd1a91c8e3e96f9683f` |
| 21 | `def` | [Hypercube.flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-flip.md) | 139 | `declaration-track:1eff4b75e0b820f4cca760336409ce0725d011affc62b245d3c6c2d1d2b7bc94` |
| 22 | `theorem` | [Hypercube.flip_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-flip-same.md) | 147 | `result-track:bb2fd5accdee9f483cd4de9f094200fc5035b55865f3aeff4388ed18ce4a2c1e` |
| 23 | `theorem` | [Hypercube.flip_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-flip-other.md) | 151 | `result-track:2f806164cac0f18f7ea08714acab3c4acb2dd7e64252c353792df3b5dd27c944` |
| 24 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-eq-of-droplast-eq-last-eq.md) | 156 | `result-track:e58066efa8ef5555488985cb05b9d42add2e097fe8ef8d1594427aa6f542ecff` |
| 25 | `def` | [Hypercube.pointEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-pointeq.md) | 173 | `declaration-track:ef231af1ce0c109909207d1d0ca71e37a4732b88cfd938f2dd169bcc9266705c` |
| 26 | `def` | [Hypercube.hammingDistance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-hammingdistance.md) | 179 | `declaration-track:d969e2c8d57422c4ddbe15a27c989582655326f28da334e80451df290605fcab` |
| 27 | `def` | [Hypercube.adjacencyMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-adjacencymatrix.md) | 186 | `declaration-track:7168f3daaca076113f7b02acb7eeb696856ecb96bd540fd45f4a83df237c6962` |
| 28 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-boundaryedgematrix.md) | 199 | `declaration-track:28ad271503c0845250c34e5dd97d7f0be02aa1b922dfe8f763f5eb45cac11aa4` |
| 29 | `def` | [Hypercube.edgeChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-edgechange.md) | 208 | `declaration-track:afe95608c4e8bb7d70fd7f05484a487ec5106320d7bed02bcb4be14abbcc3d4e` |
| 30 | `def` | [Hypercube.influenceCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-influencecount.md) | 219 | `declaration-track:9eee4e5f48aa58b61822d278ed8c3c0e84de5cc38bfc716859e82124bef2fd1b` |
| 31 | `def` | [Hypercube.influenceVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-influencevector.md) | 226 | `declaration-track:87f207d0f7213d50244500264234e30f2253b8592a19e556b313427e9e85aca7` |
| 32 | `def` | [Hypercube.directedBoundaryCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-directedboundarycount.md) | 231 | `declaration-track:100646740d79c6d5faa0f67d260078b7369e40a992f12d49cce07ef25e4fc633` |
| 33 | `def` | [Hypercube.grayBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-graybit.md) | 238 | `declaration-track:25afb6ce19a6cd2b12400309f5ad6d3187d461ded25df799b9a8915d8a162b90` |
| 34 | `def` | [Hypercube.grayPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-graypoint.md) | 248 | `declaration-track:ad4ba65c509a1e1168a1454e75f0a13bc79c36b42e3be563962066969c573811` |
| 35 | `def` | [Hypercube.grayAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeEdition2.lean/declarations/hypercube-grayaxis.md) | 252 | `declaration-track:e072c27eaddd53b144d2447ca8fd943c16f44d58c974165beb7fad0393f85691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d63305a72ce13198016abca2ba04c20dc5f0fbebe1634718c28a3bbbcbd25cdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant6f679e230da6eb5211fd3e19eae04ff23342dcd578dc03a57eb9edd23f8f9527.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant6f679e230da6eb5211fd3e19eae04ff23342dcd578dc03a57eb9edd23f8f9527.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
