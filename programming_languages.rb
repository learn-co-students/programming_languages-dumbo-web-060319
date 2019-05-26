
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"



#       {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
    # :style => [:oo, :functional]

def reformat_languages(languages)
  result={}
  arr=[]
languages.each do |k1,v1|   #k1=:oo #v1={:ruby => { :type => "interpreted"}}
  v1.each do |k2,v2|  #k2=ruby  v2={:type => "interpreted"}
    v2.each do |k3,v3|  #k3=:type v3="interpreted"
      arr=[k1]
      if result[k2] != nil
        arr= arr+ result[k2][:style]
      end
      result[k2]={k3=>v3, :style=>arr}
    end
  end
end
result
end
