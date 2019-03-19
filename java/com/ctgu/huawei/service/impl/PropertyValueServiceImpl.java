package com.ctgu.huawei.service.impl;

import com.ctgu.huawei.mapper.PropertyValueMapper;
import com.ctgu.huawei.pojo.Product;
import com.ctgu.huawei.pojo.Property;
import com.ctgu.huawei.pojo.PropertyValue;
import com.ctgu.huawei.pojo.PropertyValueExample;
import com.ctgu.huawei.service.PropertyService;
import com.ctgu.huawei.service.PropertyValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PropertyValueServiceImpl implements PropertyValueService {
    @Autowired
    PropertyValueMapper propertyValueMapper;
    @Autowired
    PropertyService propertyService;
    @Override
    public void init(Product p) {
        List<Property> pts =propertyService.list(p.getCid());
        for(Property pt:pts){
            PropertyValue pv =get(pt.getId(),p.getCid());
            if(null ==pv){
                pv = new PropertyValue();
                pv.setPid(p.getId());
                pv.setPtid(pt.getId());
                propertyValueMapper.insert(pv);
            }
        }
    }

    @Override
    public void update(PropertyValue pv) {
        propertyValueMapper.updateByPrimaryKeySelective(pv);
    }

    @Override
    public PropertyValue get(int ptid, int pid) {
        PropertyValueExample example = new PropertyValueExample();
        example.createCriteria().andPidEqualTo(pid).andPtidEqualTo(ptid);
        List<PropertyValue> pvs = propertyValueMapper.selectByExample(example);
        if(pvs.isEmpty())
            return null;
    return pvs.get(0);
    }

    @Override
    public List<PropertyValue> list(int pid) {
        PropertyValueExample example = new PropertyValueExample();
        example.createCriteria().andPidEqualTo(pid);
        List<PropertyValue> result = propertyValueMapper.selectByExample(example);
        for(PropertyValue pv:result){
             Property property = propertyService.get(pv.getPid());
                 pv.setProperty(property);

        }
        return  result;
    }
}
