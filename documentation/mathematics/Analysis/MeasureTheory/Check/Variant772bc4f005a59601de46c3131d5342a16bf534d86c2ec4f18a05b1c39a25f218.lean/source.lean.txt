import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Topology.Instances.ENNReal.Lemmas
open MeasureTheory Set Filter
open scoped Topology NNReal
#check NNReal.continuous_coe
#check NNReal.measurable_coe
#check continuous_subtype_val
#check measurable_subtype_coe
#check self_mem_nhdsWithin
#check eventually_mem_nhdsWithin
#check nhdsWithin_le_nhds
#check Integrable.mono'
#check integral_mono
#check integral_nonneg
#check integral_const_mul
#check Measurable.div
#check Continuous.div
#check Set.indicator_of_mem
#check Set.indicator_of_notMem
#check tendsto_nhdsWithin_of_tendsto_nhds
#check Filter.Tendsto.congr'
#check integral_indicator_one
#check Measure.real_singleton
#check le_div_iff₀
#check div_le_one
