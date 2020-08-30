
class OrgInfo
  attr_accessor :lowest_common_mgr, :num_imp_reps

  def initialize(lowest_common_mgr, num_imp_reps)
    @lowest_common_mgr = lowest_common_mgr
    @num_imp_reps = num_imp_reps
  end
end

class OrgChart

  attr_accessor :name, :direct_reports

  def initialize(name)
    @name = name
    @direct_reports = []
  end

end



# O(n) time | O(d) space - n number of people, d depth/height of the chart
def get_lowest_common_manager(top_manager, report_one, report_two)

  return get_org_info(top_manager, report_one, report_two).lowest_common_mgr

end


def get_org_info(manager, report_one, report_two)

  num_imp_reps = 0

  for direct_report in manager.direct_reports
    org_info = get_org_info(direct_report, report_one, report_two)

    if !org_info.lowest_common_mgr.nil?
      return org_info
    end

    num_imp_reps +=  org_info.num_imp_reps
  end


  if manager == report_one or manager == report_two
    num_imp_reps += 1
  end

  if num_imp_reps == 2
    lowest_common_mgr = manager
  else
    lowest_common_mgr = nil
  end

  return OrgInfo(lowest_common_mgr, num_imp_reps)

end





