# Verification target: GRWTSK.Topology.GeneralTopology.SearchAPI.Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "152a9c94ededf1c30de77d810668fcef69953a87",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `152a9c94ededf1c30de77d810668fcef69953a87`.

Source path: `GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RootSearchConfig](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/rootsearchconfig--5a7e3f3dc3e74f6376a28f32.md) | 54 | `declaration-track:5a7e3f3dc3e74f6376a28f32223c7979e287e7a607efd3d046c9887291e6418c` |
| 2 | `structure` | [RootExistenceProof](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/rootexistenceproof--fc3626b842058c6b2c372a0a.md) | 67 | `declaration-track:fc3626b842058c6b2c372a0a968efcc9242403161a709138fe313f9c64d9b1ec` |
| 3 | `structure` | [UniqueRootProof](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/uniquerootproof--7b1cdd7eceeffc9c529d8827.md) | 78 | `declaration-track:7b1cdd7eceeffc9c529d8827598b8605f75543246dc30d0aa63198e588493300` |
| 4 | `structure` | [RootIsolation](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/rootisolation--dd4f4019d1029892f8fe087d.md) | 84 | `declaration-track:dd4f4019d1029892f8fe087db7b2bc065bfa8cc2db4e020c629f7fc7d401a807` |
| 5 | `def` | [findRoots](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findroots--3642924ce56c15917cce2f72.md) | 94 | `declaration-track:3642924ce56c15917cce2f726e276e0fb4e0389a946419bd9297856cc1873cc7` |
| 6 | `structure` | [UniqueRootResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/uniquerootresult--356a86ce0e5c55eb0d2ec620.md) | 122 | `declaration-track:356a86ce0e5c55eb0d2ec620d8b3b5e56b9a7e8c6844dc29ebe3c71fef8cbf3c` |
| 7 | `def` | [findUniqueRoot](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/finduniqueroot--83767a2481b42c3d7a79b842.md) | 141 | `declaration-track:83767a2481b42c3d7a79b8428db1cb808cadcf5cbf7cef5bc01f5b8b1bd7d958` |
| 8 | `structure` | [OptSearchConfig](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/optsearchconfig--f19d31749fb98dacca4ae5f1.md) | 177 | `declaration-track:f19d31749fb98dacca4ae5f1cd21106543d39bb3c18153c991133077ba91d2af` |
| 9 | `structure` | [GlobalMinResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/globalminresult--0226131afa32f044652ba24e.md) | 193 | `declaration-track:0226131afa32f044652ba24ede21b33a1c60d1df50e2907563bb846905ec40a5` |
| 10 | `structure` | [GlobalMaxResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/globalmaxresult--4ca02fccd689f524c8e72d12.md) | 211 | `declaration-track:4ca02fccd689f524c8e72d1257069f80fcc74344d5171a489201cceb8a5cf809` |
| 11 | `def` | [OptSearchConfig.toGlobalOptConfig](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/optsearchconfig-toglobaloptconfig--195ed9dc94620f10c64090c6.md) | 225 | `declaration-track:195ed9dc94620f10c64090c69e5157030637e4aa503226052f976331c62213e7` |
| 12 | `def` | [findGlobalMin](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findglobalmin--227d627b285e7527de25a603.md) | 237 | `declaration-track:227d627b285e7527de25a60332b039b04b6c43eca9395f89159d4dd17c73475f` |
| 13 | `def` | [findGlobalMax](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findglobalmax--56e064bea998601cfc77db2a.md) | 259 | `declaration-track:56e064bea998601cfc77db2a95aed4415dd1e5e38c0f0ffe713273ea06d7b3a7` |
| 14 | `structure` | [GlobalMin1DResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/globalmin1dresult--94268d6ff345cee74f45e2e4.md) | 278 | `declaration-track:94268d6ff345cee74f45e2e4d63d4e7ea07d867c4ed1fb1b2af95d63c48a8819` |
| 15 | `structure` | [GlobalMax1DResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/globalmax1dresult--f2cb2514b18b2834fab26430.md) | 287 | `declaration-track:f2cb2514b18b2834fab2643006792798d9dd91acb17354254aa5a4cb0d2d955a` |
| 16 | `def` | [intervalToBox](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/intervaltobox--03e51d81b8ad5a6447c275ca.md) | 296 | `declaration-track:03e51d81b8ad5a6447c275ca8df3bd6d9be090e9ad6818440c020a8ab2b0ff98` |
| 17 | `def` | [findGlobalMin1D](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findglobalmin1d--26919cd45a590cb646380513.md) | 302 | `declaration-track:26919cd45a590cb64638051363031b928a2a1993292603d249a610ec2aa10a9c` |
| 18 | `def` | [findGlobalMax1D](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findglobalmax1d--2da4b35c7203019f5220409a.md) | 338 | `declaration-track:2da4b35c7203019f5220409a06172a1714b440dc0592d87897df1b54c66036bd` |
| 19 | `structure` | [IntegSearchConfig](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/integsearchconfig--48a9eff222924db2848f9536.md) | 372 | `declaration-track:48a9eff222924db2848f95368eeea024efd8433d2f771b9a0f110cca0e415fd2` |
| 20 | `structure` | [IntegralResult](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/integralresult--b30956def483b2f308016ccd.md) | 383 | `declaration-track:b30956def483b2f308016ccdfc6f305a9cb98972075cd4269d0699be9f001aed` |
| 21 | `def` | [findIntegral](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findintegral--fc6a14f82d7f201d9eb2eb95.md) | 393 | `declaration-track:fc6a14f82d7f201d9eb2eb955e6af81cdd95d268180f58adc8b3309428964128` |
| 22 | `def` | [findIntegralWithTolerance](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/findintegralwithtolerance--76c363b2f86ae24898fd1bf5.md) | 409 | `declaration-track:76c363b2f86ae24898fd1bf539c2c418a7c44f8563b73f33f670ffc7e11220ca` |
| 23 | `def` | [hasRootIn](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/hasrootin--48d08d4af9fac5d38d3f45bf.md) | 428 | `declaration-track:48d08d4af9fac5d38d3f45bf65113efdfaaccaa536296df2d2d77fbe4f0c0dbe` |
| 24 | `def` | [isPositiveOn](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/ispositiveon--90fd0afebeae87ccc3d1f5fb.md) | 433 | `declaration-track:90fd0afebeae87ccc3d1f5fb4848375ff7553d93812aac6caadff38a4ddf3447` |
| 25 | `def` | [isNegativeOn](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/isnegativeon--ab23bc953bacc95389e492ae.md) | 437 | `declaration-track:ab23bc953bacc95389e492ae70251fa22fa9077a0619a2a062e1ba67e0a318fe` |
| 26 | `def` | [getLowerBound](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/getlowerbound--a9fe2748d43a2827f4717a76.md) | 441 | `declaration-track:a9fe2748d43a2827f4717a76a4d2fd244a1679354876f2f259760d2216e2aeee` |
| 27 | `def` | [getUpperBound](../../../../../mathematics/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/declarations/getupperbound--0bb7a6408a2d3f8e38040a33.md) | 445 | `declaration-track:0bb7a6408a2d3f8e38040a339049bb64e1d12e5921fa408e0dc67edbf5fbebf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
