# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e025368bee57d3e5e09ece766dc900e112bf3c6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e025368bee57d3e5e09ece766dc900e112bf3c6`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Archimedean` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Bounds` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Periodic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--4208d5bde9885fde9f4e7aad.md) | 34 | `declaration-track:4208d5bde9885fde9f4e7aad7d7a239d3b17a900df06c54fc81be1fcce001853` |
| 2 | `theorem` | [Real.uniformContinuous_add](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-add--4b3743bab156daf4cb9d78be.md) | 36 | `result-track:4b3743bab156daf4cb9d78bebdacb2f8dc31f7122abea5a7d91d02e907966db7` |
| 3 | `theorem` | [Real.uniformContinuous_neg](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-neg--2ae1b98df1d499ffbb2dbb9b.md) | 44 | `result-track:2ae1b98df1d499ffbb2dbb9b9f387f874b0d858451b92084a1b2b3e58aafeb40` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--17a30e318aee517d9a72e4fc.md) | 49 | `declaration-track:17a30e318aee517d9a72e4fcdc5e98fb7f2e65dfe2ed335dbefe6369173ffbd6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--3c70aa7664289f7e5a92667f.md) | 51 | `declaration-track:3c70aa7664289f7e5a92667fe5485b93f89b42a1be29c07da917d9676ef3f927` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--5b5e50d78ebb23a4ebaf8e1e.md) | 55 | `declaration-track:5b5e50d78ebb23a4ebaf8e1e19adab6fc578b7b2cb3a996529261fc60e8cad1a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--af2cc1f6fff4342c499ea350.md) | 56 | `declaration-track:af2cc1f6fff4342c499ea350b26a930e8de59bf231d9605831c68d30d939ecb4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--d3ab49c3150aa5948447cff1.md) | 57 | `declaration-track:d3ab49c3150aa5948447cff116e2cc57c18ac4e1d4b76c11925c6ba87acbab40` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--71727d4ab8c87aac8c99aba4.md) | 59 | `declaration-track:71727d4ab8c87aac8c99aba4786d482bc6b4f043e0909f67fe9a3f022e16f00b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--bba22db56869e86a6a063305.md) | 64 | `declaration-track:bba22db56869e86a6a06330588fd7fc686b3bda376b5c3391005fe22df0f7ce6` |
| 11 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-istopologicalbasis-ioo-rat--3deec7236956cd5b6eddde98.md) | 66 | `result-track:3deec7236956cd5b6eddde98d867fb7cabe493f22059130ea852fdb1c4c66fe1` |
| 12 | `theorem` | [Real.cocompact_eq](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-cocompact-eq--b8d5b6347029ddd837de8687.md) | 80 | `result-track:b8d5b6347029ddd837de8687f1e64ea8f4cf7a5ddb21829331689f18d3d30998` |
| 13 | `theorem` | [Real.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-mem-closure-iff--cbc645a587a01465edb2e33d.md) | 91 | `result-track:cbc645a587a01465edb2e33d210fa21181adc0ff9541355b386e3dc726db1b48` |
| 14 | `theorem` | [Real.uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-inv--5ad4026481f683b012366da5.md) | 95 | `result-track:5ad4026481f683b012366da5add84b8470bb4ab44d9a27142c07de9fb11bb77b` |
| 15 | `theorem` | [Real.uniformContinuous_abs](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-abs--4f4868d9b81895b0ea0cd5b6.md) | 102 | `result-track:4f4868d9b81895b0ea0cd5b607354527155f8ba04249ac4d5101363325571742` |
| 16 | `theorem` | [Real.tendsto_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-tendsto-inv--24d1ef38d66c752df9f2f5ab.md) | 108 | `result-track:24d1ef38d66c752df9f2f5ab8f88210352b9a0161a79bffc036c927b49037461` |
| 17 | `theorem` | [Real.continuous_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-continuous-inv--5825c56b6b8c27c10c1f32ce.md) | 112 | `result-track:5825c56b6b8c27c10c1f32ce54af504b09eba5edb63fdabb90f32dd28027a7e3` |
| 18 | `theorem` | [Real.Continuous.inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-continuous-inv--1d045319f25d95ffc7a052f0.md) | 117 | `result-track:1d045319f25d95ffc7a052f040f6c6fbf707be4f23e9e5f27b9a10b3852a5dde` |
| 19 | `theorem` | [Real.uniformContinuous_const_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-const-mul--73296fb2f5ca6ff4c22cca18.md) | 122 | `result-track:73296fb2f5ca6ff4c22cca18d04b4310e101238f622aa2a75efb79d6f41ff2f6` |
| 20 | `theorem` | [Real.uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-uniformcontinuous-mul--b8291e7d279b96ff057320db.md) | 126 | `result-track:b8291e7d279b96ff057320dba3279f4dd906afe724f5d2c31be3a2ab54de44aa` |
| 21 | `theorem` | [Real.continuous_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-continuous-mul--8612bfd70a8f9d79cedcd249.md) | 137 | `result-track:8612bfd70a8f9d79cedcd24997d48169add3fb1e386d77028ea050438a31a673` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--72c2c661f903793be0eb9d1e.md) | 142 | `declaration-track:72c2c661f903793be0eb9d1ef6da2b451196480d0ef2885869fc653765fd6d25` |
| 23 | `theorem` | [Real.totallyBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-totallybounded-ball--c2ee0d0698391ed91462685b.md) | 152 | `result-track:c2ee0d0698391ed91462685b356c13d8fdb9d1043094ecdc29ee9ca88c1e6d1d` |
| 24 | `theorem` | [closure_of_rat_image_lt](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/closure-of-rat-image-lt--ef7b6103c6018c3105640566.md) | 158 | `result-track:ef7b6103c6018c31056405662b946a83c19b7965b24e7d4b17560c226e8fadff` |
| 25 | `theorem` | [Real.bounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-bounded-iff-bddbelow-bddabove--f5e84c2af537d2c2757288bd.md) | 178 | `result-track:f5e84c2af537d2c2757288bdc31a9a14572d6c8d3d1eaed7a9e9e7952c89fd0f` |
| 26 | `theorem` | [Real.subset_Icc_sInf_sSup_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/real-subset-icc-sinf-ssup-of-bounded--5ef7fa2a5d450c44b3035647.md) | 189 | `result-track:5ef7fa2a5d450c44b3035647f0888c0ae332903e796d51d9c358d2284ac51efd` |
| 27 | `theorem` | [Periodic.compact_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/periodic-compact-of-continuous--4c8faecf2eade8a7cd19fba0.md) | 202 | `result-track:4c8faecf2eade8a7cd19fba0c9fe1fadb023175e78446353fc4b306fea815f0b` |
| 28 | `theorem` | [Periodic.compact_of_continuous'](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/periodic-compact-of-continuous--387b9d647682549c7a4c01c1.md) | 209 | `result-track:387b9d647682549c7a4c01c1f21fea0162abbb19be39fda561db3d43840c9751` |
| 29 | `theorem` | [Periodic.bounded_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/periodic-bounded-of-continuous--336bdc404d4f5f720ad13d83.md) | 215 | `result-track:336bdc404d4f5f720ad13d8346794e7333ea5ef0956c382fcdb756c23552b5bb` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/instance--925e4bfa31c91b3a965e5567.md) | 232 | `declaration-track:925e4bfa31c91b3a965e556708b6e46773368c651c94d33be6bff7e7e7a5c021` |
| 31 | `theorem` | [tendsto_coe_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/tendsto-coe-cofinite--b87e29b73cbce896246d07f5.md) | 243 | `result-track:b87e29b73cbce896246d07f51d265d7e8f405a7bca9e83a57ee65c40736d2972` |
| 32 | `theorem` | [tendsto_zmultiplesHom_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/tendsto-zmultipleshom-cofinite--d9d6e3060437b0b660301e91.md) | 251 | `result-track:d9d6e3060437b0b660301e91f0a097554539e19948c4aaab9e5d5e7fc3a5dc45` |
| 33 | `theorem` | [tendsto_zmultiples_subtype_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/declarations/tendsto-zmultiples-subtype-cofinite--6e9eec3710907d3af566f844.md) | 264 | `result-track:6e9eec3710907d3af566f844626449a186b95645767aa4a8b4586916e76b139e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
